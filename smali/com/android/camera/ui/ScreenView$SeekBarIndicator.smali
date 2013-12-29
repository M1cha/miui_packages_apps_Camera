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


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ScreenView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/ScreenView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->this$0:Lcom/android/camera/ui/ScreenView;

    .line 455
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 456
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 457
    return-void
.end method


# virtual methods
.method public fastOffset(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 461
    iget v0, p0, Landroid/view/View;->mRight:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mRight:I

    .line 462
    iput p1, p0, Landroid/view/View;->mLeft:I

    .line 463
    return-void
.end method
