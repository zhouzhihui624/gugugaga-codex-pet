# Codex 动画宠物合集

> [!WARNING]
> 这是非官方同人项目，角色美术不适用本仓库的 MIT 代码许可。本仓库不代表相关游戏、动画、公司或其他权利人的授权、认可或合作。公开、下载、分发或商业使用前，请先阅读对应宠物的版权与风险说明。

适用于 Codex 的 v2 动画宠物合集。每个宠物均包含 9 组标准状态动画和 16 个观察方向。

## 宠物

### 咕咕嘎嘎

![咕咕嘎嘎预览](preview.png)

- 安装命令：`./install.sh gugugaga`
- 版权说明：[LEGAL_RISK.md](LEGAL_RISK.md)
- 为保持旧版安装方式兼容，咕咕嘎嘎的宠物文件仍位于仓库根目录。

### 皮卡丘

![皮卡丘预览](pets/pikachu/preview.gif)

- 无帽、圆脸大眼版本。
- 安装命令：`./install.sh pikachu`
- 版权说明：[pets/pikachu/LEGAL_RISK.md](pets/pikachu/LEGAL_RISK.md)
- 素材来源及处理说明：[pets/pikachu/SOURCE.md](pets/pikachu/SOURCE.md)

## 安装

```bash
git clone https://github.com/zhouzhihui624/gugugaga-codex-pet.git
cd gugugaga-codex-pet
./install.sh gugugaga
./install.sh pikachu
```

安装位置分别为：

- `${CODEX_HOME:-$HOME/.codex}/pets/gugugaga`
- `${CODEX_HOME:-$HOME/.codex}/pets/pikachu`

## 文件

- `pet.json`、`spritesheet.webp`：根目录中的咕咕嘎嘎宠物包。
- `pets/pikachu/`：皮卡丘宠物包、预览、验证结果及风险说明。
- `install.sh`：按宠物 ID 安装到本地 Codex。
- `LEGAL_RISK.md`：咕咕嘎嘎的版权来源、风险等级及使用边界。
- `ASSET_LICENSE.md`：代码与全部角色美术素材的许可边界。

## 许可边界

`install.sh` 和本项目原创配置、文档按 MIT 许可提供。角色名称、角色设计、图片、动画图集及其他第三方或衍生美术素材**不在 MIT 许可范围内**，本仓库也不声称有权授予这些素材的商业使用、再许可或周边制作权。

本项目公开的是可审阅的源文件和安装方式；由于美术权利不明确，它不是一套权利完全清晰的开源美术资产。

## 更新记录

- `2026-07-15`：新增无帽皮卡丘 v2 宠物，包含 9 组标准动作、16 个观察方向、来源说明和独立风险提示。
- `2026-07-12`：统一待机、拖动及其他动作的视觉比例，恢复原跳跃轨迹，并对缩放后的帧进行透明边缘安全的轻度锐化。
