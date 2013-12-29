.class Lcom/android/camera/BasePreferenceActivity$2;
.super Ljava/lang/Object;
.source "BasePreferenceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BasePreferenceActivity;->changeToLayoutMode(Landroid/preference/CheckBoxPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BasePreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/BasePreferenceActivity;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/camera/BasePreferenceActivity$2;->this$0:Lcom/android/camera/BasePreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 283
    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity$2;->this$0:Lcom/android/camera/BasePreferenceActivity;

    #getter for: Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/ComboPreferences;
    invoke-static {v1}, Lcom/android/camera/BasePreferenceActivity;->access$200(Lcom/android/camera/BasePreferenceActivity;)Lcom/android/camera/ComboPreferences;

    move-result-object v2

    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity$2;->this$0:Lcom/android/camera/BasePreferenceActivity;

    #getter for: Lcom/android/camera/BasePreferenceActivity;->mIsSimpleMode:Z
    invoke-static {v1}, Lcom/android/camera/BasePreferenceActivity;->access$100(Lcom/android/camera/BasePreferenceActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/camera/ComboPreferences;->setLayoutMode(Z)Lcom/android/camera/ComboPreferences;

    .line 284
    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity$2;->this$0:Lcom/android/camera/BasePreferenceActivity;

    #getter for: Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/ComboPreferences;
    invoke-static {v1}, Lcom/android/camera/BasePreferenceActivity;->access$200(Lcom/android/camera/BasePreferenceActivity;)Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 285
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_layout_mode_key"

    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity$2;->this$0:Lcom/android/camera/BasePreferenceActivity;

    #getter for: Lcom/android/camera/BasePreferenceActivity;->mIsSimpleMode:Z
    invoke-static {v2}, Lcom/android/camera/BasePreferenceActivity;->access$100(Lcom/android/camera/BasePreferenceActivity;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 286
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 287
    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity$2;->this$0:Lcom/android/camera/BasePreferenceActivity;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/camera/BasePreferenceActivity;->onSettingChanged(I)V

    .line 288
    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity$2;->this$0:Lcom/android/camera/BasePreferenceActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 289
    return-void

    .line 283
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
