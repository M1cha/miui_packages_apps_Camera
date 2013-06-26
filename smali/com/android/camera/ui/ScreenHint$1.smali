.class Lcom/android/camera/ui/ScreenHint$1;
.super Ljava/lang/Object;
.source "ScreenHint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ScreenHint;->showFirstUseHint(Lcom/android/camera/ComboPreferences;Lcom/android/camera/LocationManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ScreenHint;

.field final synthetic val$locationManager:Lcom/android/camera/LocationManager;

.field final synthetic val$preferences:Lcom/android/camera/ComboPreferences;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ScreenHint;Lcom/android/camera/ComboPreferences;Lcom/android/camera/LocationManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/camera/ui/ScreenHint$1;->this$0:Lcom/android/camera/ui/ScreenHint;

    iput-object p2, p0, Lcom/android/camera/ui/ScreenHint$1;->val$preferences:Lcom/android/camera/ComboPreferences;

    iput-object p3, p0, Lcom/android/camera/ui/ScreenHint$1;->val$locationManager:Lcom/android/camera/LocationManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint$1;->this$0:Lcom/android/camera/ui/ScreenHint;

    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint$1;->val$preferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint$1;->val$locationManager:Lcom/android/camera/LocationManager;

    const/4 v3, 0x1

    #calls: Lcom/android/camera/ui/ScreenHint;->updateFirstUseHintState(Lcom/android/camera/ComboPreferences;Lcom/android/camera/LocationManager;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/ui/ScreenHint;->access$000(Lcom/android/camera/ui/ScreenHint;Lcom/android/camera/ComboPreferences;Lcom/android/camera/LocationManager;Z)V

    .line 79
    return-void
.end method
