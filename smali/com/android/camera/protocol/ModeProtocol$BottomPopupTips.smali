.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;
.super Ljava/lang/Object;
.source "ModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips$TipType;
    }
.end annotation


# virtual methods
.method public abstract containTips(I)Z
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract directlyHideTips()V
.end method

.method public abstract hideQrCodeTip()V
.end method

.method public abstract isPortraitHintVisible()Z
.end method

.method public abstract reInitTipImage()V
.end method

.method public abstract setPortraitHintVisible(I)V
.end method

.method public abstract showQrCodeTip()V
.end method

.method public abstract showTips(III)V
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract updateTipBottomMargin(IZ)V
.end method
