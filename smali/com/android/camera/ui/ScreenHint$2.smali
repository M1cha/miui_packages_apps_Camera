.class Lcom/android/camera/ui/ScreenHint$2;
.super Ljava/lang/Object;
.source "ScreenHint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ScreenHint;->showFirstUseHint(Lcom/android/camera/ComboPreferences;Lcom/android/camera/LocationManager;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ScreenHint;

.field final synthetic val$front:Z

.field final synthetic val$locationManager:Lcom/android/camera/LocationManager;

.field final synthetic val$preferences:Lcom/android/camera/ComboPreferences;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ScreenHint;Lcom/android/camera/ComboPreferences;Lcom/android/camera/LocationManager;Z)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/camera/ui/ScreenHint$2;->this$0:Lcom/android/camera/ui/ScreenHint;

    iput-object p2, p0, Lcom/android/camera/ui/ScreenHint$2;->val$preferences:Lcom/android/camera/ComboPreferences;

    iput-object p3, p0, Lcom/android/camera/ui/ScreenHint$2;->val$locationManager:Lcom/android/camera/LocationManager;

    iput-boolean p4, p0, Lcom/android/camera/ui/ScreenHint$2;->val$front:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint$2;->this$0:Lcom/android/camera/ui/ScreenHint;

    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint$2;->val$preferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint$2;->val$locationManager:Lcom/android/camera/LocationManager;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/camera/ui/ScreenHint$2;->val$front:Z

    # invokes: Lcom/android/camera/ui/ScreenHint;->updateFirstUseHintState(Lcom/android/camera/ComboPreferences;Lcom/android/camera/LocationManager;ZZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/ScreenHint;->access$000(Lcom/android/camera/ui/ScreenHint;Lcom/android/camera/ComboPreferences;Lcom/android/camera/LocationManager;ZZ)V

    .line 86
    return-void
.end method
