part of native_widgets;

class NativeIcon extends StatelessWidget {
  final IconData iconData;
  final IconData iosIcon;

  NativeIcon(this.iconData, {Key key, this.iosIcon});

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      key: key,
      cupertino: (BuildContext context, _) => Icon(iosIcon ?? iconData),
      material: (BuildContext context, _) => Icon(iconData),
    );
  }
}
