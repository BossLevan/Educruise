import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class ForwardAnimation extends StatefulWidget {
  final Widget child;

  ForwardAnimation({this.child, int milliseconds});
  @override
  _ForwardAnimationState createState() => _ForwardAnimationState();
}

class _ForwardAnimationState extends State<ForwardAnimation>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;

  start() {
    animationController =
        AnimationController(duration: Duration(milliseconds: 450), vsync: this);
    animation = Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeIn));

    animationController.forward();
  }

  @override
  void initState() {
    super.initState();
    start();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
        animation: animationController,
        builder: (context, child) {
          return Material(
            color: Theme.of(context).backgroundColor,
            child: Transform(
                transform:
                    Matrix4.translationValues(animation.value * width, 0, 0),
                child: widget.child),
          );
        });
  }
}

class ImageAnimation extends StatefulWidget {
  final Widget child;

  ImageAnimation({this.child});
  @override
  _ImageAnimationState createState() => _ImageAnimationState();
}

class _ImageAnimationState extends State<ImageAnimation>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;

  start() {
    animationController =
        AnimationController(duration: Duration(milliseconds: 450), vsync: this);
    animation = Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeIn));

    animationController.forward();
  }

  @override
  void initState() {
    super.initState();
    start();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
        animation: animationController,
        builder: (context, child) {
          return Material(
            //  color: appThemeLight.primaryColor,
            child: Transform(
                transform:
                    Matrix4.translationValues(0, animation.value * width, 0),
                child: widget.child),
          );
        });
  }
}

class BackwardAnimation extends StatefulWidget {
  final Widget child;

  BackwardAnimation({this.child});
  @override
  _BackwardAnimationState createState() => _BackwardAnimationState();
}

class _BackwardAnimationState extends State<BackwardAnimation>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;

  start() {
    animationController =
        AnimationController(duration: Duration(milliseconds: 450), vsync: this);
    animation = Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeIn));

    animationController.forward();
  }

  @override
  void initState() {
    super.initState();
    start();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) {
        return Material(
          //  color: appThemeLight.primaryColorLight,
          child: Transform(
              transform:
                  Matrix4.translationValues(animation.value * width, 0, 0),
              child: widget.child),
        );
      },
    );
  }
}

class CustomSlideTransition extends PageRouteBuilder {
  final Widget child;
  CustomSlideTransition({this.child})
      : super(
          transitionDuration: Duration(milliseconds: 50),
          pageBuilder: (context, animation, secondaryAnomation) => child,
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return Material(
              color: Theme.of(context).backgroundColor,
              child: SlideTransition(
                position: Tween<Offset>(
                        begin: const Offset(1.0, 0.0), end: Offset.zero)
                    .animate(animation),
                child: Material(
                  color: Theme.of(context).backgroundColor,
                  child: SlideTransition(
                    position: Tween<Offset>(
                            begin: Offset.zero, end: const Offset(0.0, 1.0))
                        .animate(secondaryAnimation),
                    child: child,
                  ),
                ),
              ),
            );
          },
        );
}
