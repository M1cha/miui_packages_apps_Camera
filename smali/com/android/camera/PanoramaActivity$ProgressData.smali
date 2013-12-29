.class Lcom/android/camera/PanoramaActivity$ProgressData;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PanoramaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressData"
.end annotation


# instance fields
.field isFinished:Z

.field panningRateX:F

.field panningRateY:F

.field progressX:F

.field progressY:F

.field final synthetic this$0:Lcom/android/camera/PanoramaActivity;


# direct methods
.method private constructor <init>(Lcom/android/camera/PanoramaActivity;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/camera/PanoramaActivity$ProgressData;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PanoramaActivity;Lcom/android/camera/PanoramaActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 504
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaActivity$ProgressData;-><init>(Lcom/android/camera/PanoramaActivity;)V

    return-void
.end method
