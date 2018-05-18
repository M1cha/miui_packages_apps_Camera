.class Lcom/android/camera/BasePreferenceActivity$1;
.super Ljava/lang/Object;
.source "BasePreferenceActivity.java"

# interfaces
.implements Lcom/android/camera/Util$PackageInstallerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BasePreferenceActivity;
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

    iput-object p1, p0, Lcom/android/camera/BasePreferenceActivity$1;->this$0:Lcom/android/camera/BasePreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;Z)V
    .locals 3

    if-eqz p2, :cond_0

    const-string/jumbo v1, "com.xiaomi.scanner"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity$1;->this$0:Lcom/android/camera/BasePreferenceActivity;

    iget-object v1, v1, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "pref_scan_qrcode_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity$1;->this$0:Lcom/android/camera/BasePreferenceActivity;

    new-instance v2, Lcom/android/camera/BasePreferenceActivity$1$1;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/BasePreferenceActivity$1$1;-><init>(Lcom/android/camera/BasePreferenceActivity$1;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/BasePreferenceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
