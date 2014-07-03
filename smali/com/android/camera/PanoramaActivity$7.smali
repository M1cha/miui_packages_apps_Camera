.class Lcom/android/camera/PanoramaActivity$7;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaActivity;->onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaActivity;

.field final synthetic val$mode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 846
    iput-object p1, p0, Lcom/android/camera/PanoramaActivity$7;->this$0:Lcom/android/camera/PanoramaActivity;

    iput-object p2, p0, Lcom/android/camera/PanoramaActivity$7;->val$mode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$7;->this$0:Lcom/android/camera/PanoramaActivity;

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity$7;->val$mode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/MenuHelper;->gotoSimpleModeCamera(Landroid/app/Activity;Ljava/lang/String;)V

    .line 849
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$7;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-virtual {v0}, Lcom/android/camera/PanoramaActivity;->finish()V

    .line 850
    return-void
.end method
