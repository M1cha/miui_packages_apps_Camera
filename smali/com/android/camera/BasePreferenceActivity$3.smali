.class Lcom/android/camera/BasePreferenceActivity$3;
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

.field final synthetic val$checkBox:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/camera/BasePreferenceActivity;Landroid/preference/CheckBoxPreference;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/camera/BasePreferenceActivity$3;->this$0:Lcom/android/camera/BasePreferenceActivity;

    iput-object p2, p0, Lcom/android/camera/BasePreferenceActivity$3;->val$checkBox:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 297
    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity$3;->this$0:Lcom/android/camera/BasePreferenceActivity;

    #getter for: Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/ComboPreferences;
    invoke-static {v1}, Lcom/android/camera/BasePreferenceActivity;->access$200(Lcom/android/camera/BasePreferenceActivity;)Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 298
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_layout_mode_key"

    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity$3;->this$0:Lcom/android/camera/BasePreferenceActivity;

    #getter for: Lcom/android/camera/BasePreferenceActivity;->mIsSimpleMode:Z
    invoke-static {v1}, Lcom/android/camera/BasePreferenceActivity;->access$100(Lcom/android/camera/BasePreferenceActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 299
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 300
    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity$3;->val$checkBox:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity$3;->this$0:Lcom/android/camera/BasePreferenceActivity;

    #getter for: Lcom/android/camera/BasePreferenceActivity;->mIsSimpleMode:Z
    invoke-static {v2}, Lcom/android/camera/BasePreferenceActivity;->access$100(Lcom/android/camera/BasePreferenceActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 301
    return-void

    .line 298
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
