import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:podcast_app/app/reels/domain/entity/video/video.dart';
import 'package:podcast_app/app/reels/presentation/widget/circular_profile_image.dart';
import 'package:podcast_app/app/reels/presentation/widget/expandable_text_view.dart';
import 'package:podcast_app/app/reels/presentation/widget/social_button.dart';
import 'package:video_player/video_player.dart';

class ReelVideoItem extends StatefulWidget {
  final Video video;
  final bool isCurrent;
  final bool isMuted;
  final VideoPlayerController? videoPlayerController;
  final VoidCallback? onCompletePlaying;
  final void Function(bool)? onMuteChange;

  const ReelVideoItem({
    super.key,
    required this.video,
    required this.isCurrent,
    this.videoPlayerController,
    this.onCompletePlaying,
    this.isMuted = false,
    this.onMuteChange,
  });

  @override
  _ReelVideoItemState createState() => _ReelVideoItemState();
}

class _ReelVideoItemState extends State<ReelVideoItem>
    with AutomaticKeepAliveClientMixin {
  late VideoPlayerController _controller;
  bool _isMuted = false;
  bool _showMuteIcon = false;
  Timer? _muteIconTimer;

  @override
  void initState() {
    super.initState();

    debugPrint('isCOntroller null: ${widget.videoPlayerController == null}');

    _isMuted = widget.isMuted;

    if (widget.videoPlayerController != null) {
      _controller = widget.videoPlayerController!;
      _initializeController();
    } else {
      _controller =
          VideoPlayerController.networkUrl(Uri.parse(widget.video.cdnUrl))
            ..initialize().then((_) {
              setState(() {});
              if (widget.isCurrent) {
                _controller.play();
              }
            });
    }

    _controller.addListener(_onVideoEndListener);
    _controller.setVolume(_isMuted ? 0.0 : 1.0);
  }

  @override
  void didUpdateWidget(ReelVideoItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isCurrent && !_controller.value.isPlaying) {
      _controller.play();
    } else if (!widget.isCurrent && _controller.value.isPlaying) {
      _controller.pause();
    }
    if (oldWidget.isMuted != widget.isMuted) {
      setState(() {
        _isMuted = widget.isMuted;
      });
      _controller.setVolume(widget.isMuted ? 0.0 : 1.0);
    }

  }

  @override
  void dispose() {
    _controller.removeListener(_onVideoEndListener);
    _muteIconTimer?.cancel();
    if (widget.videoPlayerController == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  void _toggleMute() {
    setState(() {
      _isMuted = !_isMuted;
      if(widget.onMuteChange!=null){
        widget.onMuteChange!(_isMuted);
      }
      _controller.setVolume(_isMuted ? 0.0 : 1.0);
      _showMuteIcon = true;
      _muteIconTimer?.cancel();
      _muteIconTimer = Timer(const Duration(milliseconds: 750), () {
        setState(() {
          _showMuteIcon = false;
        });
      });
    });
  }

  void _onVideoEndListener() {
    if (_controller.value.isInitialized) {
      if (!_controller.value.isPlaying &&
          _controller.value.position == _controller.value.duration) {
        if(widget.onCompletePlaying != null) {
          widget.onCompletePlaying!();
        }
      }
    }
  }

  Future<void> _initializeController() async {
    if (!_controller.value.isInitialized) {
      await _controller.initialize();
      setState(() {});
    }

    if (widget.isCurrent && _controller.value.isInitialized) {
      _controller.play();
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return GestureDetector(
      onTap: (){
        _toggleMute();
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : CachedNetworkImage(imageUrl: widget.video.thumbCdnUrl),
          Positioned(
            bottom: 40,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.08),
                    Colors.black.withOpacity(0.05),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircularProfileImage(
                        imageUrl: widget.video.user.profilePictureCdn,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        widget.video.user.userName,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth:
                          MediaQuery.of(context).size.width, // Adjust as needed
                    ),
                    margin: const EdgeInsets.only(right: 40),
                    child: ExpandableText(
                      text: widget.video.title,
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              right: 12,
              bottom: 120,
              child: Column(
                children: [
                  SocialButton(
                    icon: widget.video.isLiked? IconsaxPlusBold.like_1 : IconsaxPlusLinear.like_1,
                    label: '${widget.video.totalLikes}',
                    iconColor: widget.video.isLiked? Colors.pink : Colors.white,
                  ),
                  const SizedBox(height: 8,),
                  SocialButton(
                    icon: IconsaxPlusLinear.message,
                    label: '${widget.video.totalComments}'
                  ),
                  const SizedBox(height: 8,),
                  SocialButton(
                    icon: IconsaxPlusLinear.send_2,
                    label: '${widget.video.totalComments}'
                  ),
                  const SizedBox(height: 8,),
                  SocialButton(
                    icon: widget.video.isWished? IconsaxPlusBold.heart: IconsaxPlusLinear.heart,
                    label: '${widget.video.totalWishlist}'
                  ),
                ],
              )),
          if(_showMuteIcon)
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Container(
                    height: 60,
                    width: 60,
                    color: Colors.black12,
                    child: Icon(_isMuted ? IconsaxPlusLinear.volume_slash: IconsaxPlusLinear.volume_high,color: Colors.white,)
                ),
              ),
            ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}


