.class public Lcom/android/camera/ui/RotateTextToast;
.super Ljava/lang/Object;
.source "RotateTextToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/RotateTextToast$1;
    }
.end annotation


# static fields
.field private static sRotateTextToast:Lcom/android/camera/ui/RotateTextToast;


# instance fields
.field mHandler:Landroid/os/Handler;

.field mLayoutRoot:Landroid/view/ViewGroup;

.field private final mRunnable:Ljava/lang/Runnable;

.field mToast:Lcom/android/camera/ui/RotateLayout;


# direct methods
.method static synthetic -set0(Lcom/android/camera/ui/RotateTextToast;)Lcom/android/camera/ui/RotateTextToast;
    .locals 0

    sput-object p0, Lcom/android/camera/ui/RotateTextToast;->sRotateTextToast:Lcom/android/camera/ui/RotateTextToast;

    return-object p0
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/camera/ui/RotateTextToast$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/RotateTextToast$1;-><init>(Lcom/android/camera/ui/RotateTextToast;)V

    iput-object v2, p0, Lcom/android/camera/ui/RotateTextToast;->mRunnable:Ljava/lang/Runnable;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/RotateTextToast;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/camera/ui/RotateTextToast;->mLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/ui/RotateTextToast;->mLayoutRoot:Landroid/view/ViewGroup;

    const v3, 0x7f040036

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a00a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateLayout;

    iput-object v2, p0, Lcom/android/camera/ui/RotateTextToast;->mToast:Lcom/android/camera/ui/RotateLayout;

    return-void
.end method

.method public static getInstance()Lcom/android/camera/ui/RotateTextToast;
    .locals 1

    sget-object v0, Lcom/android/camera/ui/RotateTextToast;->sRotateTextToast:Lcom/android/camera/ui/RotateTextToast;

    return-object v0
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;
    .locals 1

    sget-object v0, Lcom/android/camera/ui/RotateTextToast;->sRotateTextToast:Lcom/android/camera/ui/RotateTextToast;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/android/camera/ui/RotateTextToast;->sRotateTextToast:Lcom/android/camera/ui/RotateTextToast;

    :cond_0
    sget-object v0, Lcom/android/camera/ui/RotateTextToast;->sRotateTextToast:Lcom/android/camera/ui/RotateTextToast;

    return-object v0
.end method


# virtual methods
.method public show(II)V
    .locals 6

    const/4 v3, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/RotateTextToast;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/ui/RotateTextToast;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/camera/ui/RotateTextToast;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/ui/RotateTextToast;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/RotateTextToast;->mToast:Lcom/android/camera/ui/RotateLayout;

    const v2, 0x7f0a008e

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/camera/ui/RotateTextToast;->mToast:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, p2, v3}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    iget-object v1, p0, Lcom/android/camera/ui/RotateTextToast;->mToast:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/ui/RotateTextToast;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/ui/RotateTextToast;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/camera/ui/RotateTextToast;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/ui/RotateTextToast;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
