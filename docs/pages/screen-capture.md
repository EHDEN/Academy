---
layout: "page"
nav_order: 3
title: "Screen Capture"
parent: "Course Development"
---
# Screen Capture
For screen captures we recommend to download the open-source software **OBS Studio** and install it on your system.

[Download OBS Studio](https://obsproject.com){: .btn .btn-primary .fs-5 .mb-4 .mb-md-0 .mr-2 }  [View documentation](https://obsproject.com/help){: .btn .fs-5 .mb-4 .mb-md-0 }

## Settings
To achieve a good picture quality, we recommend to use the following settings for OBS Studio.

1.	Open the *Settings* menu.
2.	Select the *Output* category and change the *Output Mode* to `Advanced`, which will show additional settings. Open the **Recoding** tab, which is now visible. Set the following values.

    | Option | Value |
    | ---: | :--- |
    | Recording Path | *Path to storage directory* |
    | Recording Format | `mp4` |
    | Encoder | `x264` |
    | Rate Control | `CRF` |
    | CRF | `23` |
    | Keyframe Interval | `0` |
    | CPU Usage Preset | `very fast`
    | Profile | `high` |

3. Select the **Audio** category and set the following values.

    | Option | Value |
    | ---: | :--- |
    | Sample Rate | `48 khz` |
    | Channels | `Mono` |

4.	Select the **Video** category and set the following values.

    | Option | Value |
    | ---: | :--- |
    | Base Resolution | `1920x1080` |
    | Output Resolution | `1920x1080` |
    | Downscale Filter | `Lanczos` |
    | Common FPS Values | `30` |

5.	Open the **Advanced** category and set the following values.

    | Option | Value |
    | ---: | :--- |
    | Color Format | `NV12` |
    | Output Resolution | `1920x1080` |
    | Color Space | `709` |
    | Color Range | `Full` |

## Sources
Screen capture is done from a source, which is specified in **Sources** on the bottom of the main screen of OBS Studio.
1. Select *+* and *Display Capture*.
2. A menu will open in which the *Display* to capture from can be selected.

If you plan to also capture audio from the computer output, e.g. to play a video, or a camera feed you must also add the corresponding sources. Note, by default a source for an audio input device, e.g. a microphone, has already been added. It is visible in the *Audio Mixer* section of the main screen.

We recommend using an external monitor with an aspect ratio of *16:9*. These monitors use the most common native resolution of *1920 x 1080*, *2560 x 1440*, and *3840 x 2160*. We do not recommend screen capture on screens with **other aspect ratios**, such as the Apple MacBook Pro screen, which has an aspect ratio of *16:10*, as it will result in black borders on the sides.

## Tips
- An external monitor will allow you to have OBS Studio opened on one screen, while recording from the other one.
- It may be necessary to grant OBS Studio access to the audio input devices and screen image. Particularly, MacOS devices may not automatically grant permissions to OBS Studio during install. In that case you can do the following.
    1. Open the MacOS *System Preferences*.
    2. Select *Security & Privacy*.
    3. Open the *Privacy* tab.
    4. Allow the `OBS.app` for the *Microphone*, *Screen Recording* and *Camera* (optional if you plan to record with a camera).
