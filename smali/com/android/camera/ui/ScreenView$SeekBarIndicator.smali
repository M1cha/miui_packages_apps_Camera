.class public Lcom/android/camera/ui/ScreenView$SeekBarIndicator;
.super Landroid/widget/LinearLayout;
.source "ScreenView.java"

# interfaces
.implements Lcom/android/camera/ui/ScreenView$Indicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SeekBarIndicator"
.end annotation


# virtual methods
.method public fastOffset(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->getLeft()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->getRight()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->setRight(I)V

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->setLeft(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
