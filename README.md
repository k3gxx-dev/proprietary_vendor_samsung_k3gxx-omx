# Proprietary OpenMAX (OMX) Video Codecs and MFC Firmware for Samsung Galaxy S5 3G (k3gxx)

Este repositório contém os codecs de vídeo acelerados por hardware via OpenMAX (OMX) e o firmware do coprocessador Multi-Format Codec (MFC) do Exynos 5422.

## Componentes

### 1. Binários Proprietários (`proprietary/`)
* `libExynosOMX_Core.so`: Core do despachador OpenMAX IL.
* `libExynosOMX_Resourcemanager.so`: Gerenciador de instâncias de codecs e memória de buffers de vídeo.
* `libOMX.Exynos.AVC.Decoder.so` / `Encoder.so`: Codec H.264 / AVC por hardware.
* `libOMX.Exynos.MPEG4.Decoder.so` / `Encoder.so`: Codec MPEG-4 / H.263 por hardware.
* `libOMX.Exynos.VP8.Decoder.so` / `Encoder.so`: Codec VP8 por hardware.
* `mfc_fw.bin`: Firmware do bloco de aceleração de vídeo por hardware (MFC) carregado pelo kernel.
