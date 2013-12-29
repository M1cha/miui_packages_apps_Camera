.class Lcom/android/camera/ui/HorizontalSettingPopup$1;
.super Ljava/lang/Object;
.source "HorizontalSettingPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/HorizontalSettingPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/HorizontalSettingPopup;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/HorizontalSettingPopup;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalSettingPopup$1;->this$0:Lcom/android/camera/ui/HorizontalSettingPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 63
    .local v0, index:I
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSettingPopup$1;->this$0:Lcom/android/camera/ui/HorizontalSettingPopup;

    #getter for: Lcom/android/camera/ui/HorizontalSettingPopup;->mSelectedIndex:I
    invoke-static {v1}, Lcom/android/camera/ui/HorizontalSettingPopup;->access$000(Lcom/android/camera/ui/HorizontalSettingPopup;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSettingPopup$1;->this$0:Lcom/android/camera/ui/HorizontalSettingPopup;

    #setter for: Lcom/android/camera/ui/HorizontalSettingPopup;->mSelectedIndex:I
    invoke-static {v1, v0}, Lcom/android/camera/ui/HorizontalSettingPopup;->access$002(Lcom/android/camera/ui/HorizontalSettingPopup;I)I

    .line 65
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSettingPopup$1;->this$0:Lcom/android/camera/ui/HorizontalSettingPopup;

    iget-object v1, v1, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalSettingPopup$1;->this$0:Lcom/android/camera/ui/HorizontalSettingPopup;

    #getter for: Lcom/android/camera/ui/HorizontalSettingPopup;->mSelectedIndex:I
    invoke-static {v2}, Lcom/android/camera/ui/HorizontalSettingPopup;->access$000(Lcom/android/camera/ui/HorizontalSettingPopup;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 66
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSettingPopup$1;->this$0:Lcom/android/camera/ui/HorizontalSettingPopup;

    iget-object v1, v1, Lcom/android/camera/ui/AbstractSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSettingPopup$1;->this$0:Lcom/android/camera/ui/HorizontalSettingPopup;

    iget-object v1, v1, Lcom/android/camera/ui/AbstractSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    invoke-interface {v1}, Lcom/android/camera/ui/AbstractSettingPopup$Listener;->onSettingChanged()V

    goto :goto_0
.end method
