import 'package:flutter/material.dart';
import 'package:flutter_player_sdk/flutter_player_sdk.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final bool isLive = true;
  final bool isDrmAndroid = true;
  final String wideVinelicense =
      'https://license.pallycon.com/ri/licenseManager.do?pallycon-customdata-v2=eyJkcm1fdHlwZSI6IldpZGV2aW5lIiwgInNpdGVfaWQiOiJYRlFJIiwgInVzZXJfaWQiOiJMSUNFTlNFVE9LRU4iLCAiY2lkIjoiMTM1NzA0ODk4NDE3NTAxOTUwOTMwMDQ2MTI3NTIxNjMiLCAicG9saWN5IjoiQ05ubGp4RnBkY3IvK0dHTjBKU1UrRU1sRGtPekpKc3FzSjgwcVM0YzhhR3E3YmJxVktqMjdQWVRCVytJVlVFZVJqOVdaTmtlOGd0ck1xblVVNDg4ZnMxY1hqOHNFNVZtbmdiNFRTV01ybXJCNnhNd2hFRzhGNVpja3JCQmVzMDhRaVAwdWQrT1RsbzgwT0lZK3lpWlZLZHhYSXRySlBNcWxTZVQ4QVJDMEN5RG9rWVM1Z3lqY2p4WFk1NUhjRlRwWG90UUh2bytySjZ4WjhyY2p1eGdTRitONnlYWnZvaDVkUHFSRW1LUk1pZmxRcCtYZGpTZ3dqOEk1MnppRkxkbXdEbFZwRFM2MC9KZzFQaVhCbUE1NVlKV1VQQW1HSE9jZzcwSGRpVHhuRTlIYmZjZ3ZTZE1kWW9adTk0WDlSSDhrREZTOER1azlMS3dQQVFabFJtckJJUHRsSnluRFVZTXZ3Q1BqWHlNNUx4aC8xNHZyTTBUUmN3MDhyZEpjeVFXdyszenNDU1NhbldKcTUwSTZRejRZZnhGNGcvTlR4OHorblg1emNwTmt0Mm5vVi9hN2pVTmd3OFVZQmtzTDRYWWIyT0ZrSzBiek1EL2xuK1RyQUROSDdEa1RuV1dDWk9zeit3a3cxR2IrZVd2aHNUbWFwMkcvaHhnZGxiVndpUkI4TWxVb3l0OFFNOEo1OFNubUxBZkh4UFhCYzlwUmZWR1FZTXZGc1g0N2VuTW9SQ2loeGR0V0pLaDB3STF6QzBSWHN5T2VIaFdEZGFkd1UvOXVpbThHdUdZVlkxR1Vyd1hVQ0Z0Q0ljSER2M2l6Sm9DY1RxQjg1Q0VsZHJlK0RvUjZHY3BYRURVbmh3ZDY1UUlhNWRvT2ljelVsTCsyUlRqNDMvQ25HWUQ0ZkNsaHdxbXpDbjJkU2lGSWVTRWEweElGczM5eCtYL1lyWWVDdWhMVUo5bWJWZVRKUzl0RVZFWWlzbkQ2U2VRWUJhbGlOWkZycmtQNjliampwVnNseDlzczBWVTRjUndGMVVnRzYwdnlNM2tuUT09IiwgInRpbWVzdGFtcCI6IjIwMjUtMDMtMjVUMTA6Mjk6MDMrMDA6MDAiLCAiaGFzaCI6Ijlld2h5TmNuOFF5bFdaVVRmL0tJbzlxeXBienFsS3FUZkJKRlA2S1N5UlE9In0=';
  final String videoUrl =
      "https://bitmovin-a.akamaihd.net/content/MI201109210084_1/mpds/f08e80da-bf1d-4e3d-8899-f0f6155f6efa.mpd";

  List<Map<String, dynamic>> subtitles = [
    {
      "name": "Arabic",
      "url":
          "https://d2qhubmtkumgh4.cloudfront.net/4iuOty5mfyXqZTDxxSsXGUi2F1cQ3tiG/3D28C83C85544F0D9517DD2E7C7EEDAA/vl/270cc9da5dab4ba0b3641a677aff966a/subtitle/4b34f3ec947f1c5ef3196e07c01db3dc/Elemental.2023.1080p.WEBRip.x264. YTS.MX-Arabic-230f115ef21c569ed771733c3088f5ac.vtt",
      "selectedByDefault": true,
    },
    {
      "name": "Croatian",
      "url":
          "https://d2qhubmtkumgh4.cloudfront.net/4iuOty5mfyXqZTDxxSsXGUi2F1cQ3tiG/3D28C83C85544F0D9517DD2E7C7EEDAA/vl/270cc9da5dab4ba0b3641a677aff966a/subtitle/e80d9cfd493f874e3b53e031c0e94b30/Elemental.2023.CROSubs.WEBRip.XviD-metalcamp-Croatian-0ab71f8f2242511d2f8577bf400f5fa3.vtt",
      "selectedByDefault": false,
    },
    {
      "name": "English",
      "url":
          "https://d2qhubmtkumgh4.cloudfront.net/4iuOty5mfyXqZTDxxSsXGUi2F1cQ3tiG/3D28C83C85544F0D9517DD2E7C7EEDAA/vl/270cc9da5dab4ba0b3641a677aff966a/subtitle/40208699c8ee8611809b39e7bcadcff5/Elemental.2023.720p.WEBRip.x264.AAC-English-3365ace02e83a064ea767a25c3512601.vtt",
      "selectedByDefault": false,
    },
    {
      "name": "German",
      "url":
          "https://d2qhubmtkumgh4.cloudfront.net/4iuOty5mfyXqZTDxxSsXGUi2F1cQ3tiG/3D28C83C85544F0D9517DD2E7C7EEDAA/vl/270cc9da5dab4ba0b3641a677aff966a/subtitle/a58caa2d5d08a235f8d2637e8490ec40/Elemental 2023 1080p WEB-DL DDP 5.1 Atmos H.264-FLUX-German-de56b4c9bdbe8cf4e6e9a403fc167369.vtt",
      "selectedByDefault": false,
    },
    {
      "name": "Portuguese",
      "url":
          "https://d2qhubmtkumgh4.cloudfront.net/4iuOty5mfyXqZTDxxSsXGUi2F1cQ3tiG/3D28C83C85544F0D9517DD2E7C7EEDAA/vl/270cc9da5dab4ba0b3641a677aff966a/subtitle/692865a46b549edfba254b75d42ce2a1/Elemental 2023 1080p WEB-DL DDP 5.1 Atmos H.264-FLUX-Portuguese-11ec621a8b96ce4f8c6c209be429f3c9.vtt",
      "selectedByDefault": false,
    },
  ];

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(videoUrl: videoUrl, subtitles: subtitles),
    );
  }
}
