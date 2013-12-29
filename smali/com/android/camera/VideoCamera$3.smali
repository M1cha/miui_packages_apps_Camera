.class Lcom/android/camera/VideoCamera$3;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoCamera;->initializeMiscControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0

    .prologue
    .line 2637
    iput-object p1, p0, Lcom/android/camera/VideoCamera$3;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2641
    iget-object v0, p0, Lcom/android/camera/VideoCamera$3;->this$0:Lcom/android/camera/VideoCamera;

    #calls: Lcom/android/camera/VideoCamera;->capture()Z
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$1500(Lcom/android/camera/VideoCamera;)Z

    .line 2642
    return-void
.end method
