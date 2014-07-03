.class Lcom/android/camera/ui/RulerSettingPopup$1;
.super Ljava/lang/Object;
.source "RulerSettingPopup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/RulerSettingPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/RulerSettingPopup;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/RulerSettingPopup;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    .line 36
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 37
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 38
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    # getter for: Lcom/android/camera/ui/RulerSettingPopup;->mCursor:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/camera/ui/RulerSettingPopup;->access$000(Lcom/android/camera/ui/RulerSettingPopup;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 56
    :cond_0
    :goto_0
    return v6

    .line 40
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 41
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    # invokes: Lcom/android/camera/ui/RulerSettingPopup;->filterX(I)I
    invoke-static {v3, v4}, Lcom/android/camera/ui/RulerSettingPopup;->access$200(Lcom/android/camera/ui/RulerSettingPopup;I)I

    move-result v3

    # setter for: Lcom/android/camera/ui/RulerSettingPopup;->mCursorX:I
    invoke-static {v2, v3}, Lcom/android/camera/ui/RulerSettingPopup;->access$102(Lcom/android/camera/ui/RulerSettingPopup;I)I

    .line 42
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    # getter for: Lcom/android/camera/ui/RulerSettingPopup;->mCursorX:I
    invoke-static {v3}, Lcom/android/camera/ui/RulerSettingPopup;->access$100(Lcom/android/camera/ui/RulerSettingPopup;)I

    move-result v3

    # invokes: Lcom/android/camera/ui/RulerSettingPopup;->indexOfPos(I)I
    invoke-static {v2, v3}, Lcom/android/camera/ui/RulerSettingPopup;->access$300(Lcom/android/camera/ui/RulerSettingPopup;I)I

    move-result v1

    .line 43
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    # getter for: Lcom/android/camera/ui/RulerSettingPopup;->mCursorX:I
    invoke-static {v2}, Lcom/android/camera/ui/RulerSettingPopup;->access$100(Lcom/android/camera/ui/RulerSettingPopup;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    # getter for: Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I
    invoke-static {v3}, Lcom/android/camera/ui/RulerSettingPopup;->access$400(Lcom/android/camera/ui/RulerSettingPopup;)[I

    move-result-object v3

    aget v3, v3, v1

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0xf

    if-ge v2, v3, :cond_2

    .line 44
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    # getter for: Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I
    invoke-static {v3}, Lcom/android/camera/ui/RulerSettingPopup;->access$400(Lcom/android/camera/ui/RulerSettingPopup;)[I

    move-result-object v3

    aget v3, v3, v1

    # setter for: Lcom/android/camera/ui/RulerSettingPopup;->mCursorX:I
    invoke-static {v2, v3}, Lcom/android/camera/ui/RulerSettingPopup;->access$102(Lcom/android/camera/ui/RulerSettingPopup;I)I

    .line 46
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    invoke-virtual {v2}, Lcom/android/camera/ui/RulerSettingPopup;->invalidate()V

    goto :goto_0

    .line 48
    .end local v1    # "index":I
    :cond_3
    if-ne v0, v6, :cond_0

    .line 49
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    iget-object v4, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    # invokes: Lcom/android/camera/ui/RulerSettingPopup;->filterX(I)I
    invoke-static {v4, v5}, Lcom/android/camera/ui/RulerSettingPopup;->access$200(Lcom/android/camera/ui/RulerSettingPopup;I)I

    move-result v4

    # invokes: Lcom/android/camera/ui/RulerSettingPopup;->indexOfPos(I)I
    invoke-static {v3, v4}, Lcom/android/camera/ui/RulerSettingPopup;->access$300(Lcom/android/camera/ui/RulerSettingPopup;I)I

    move-result v3

    # setter for: Lcom/android/camera/ui/RulerSettingPopup;->mValueIndex:I
    invoke-static {v2, v3}, Lcom/android/camera/ui/RulerSettingPopup;->access$502(Lcom/android/camera/ui/RulerSettingPopup;I)I

    .line 50
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    # getter for: Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I
    invoke-static {v3}, Lcom/android/camera/ui/RulerSettingPopup;->access$400(Lcom/android/camera/ui/RulerSettingPopup;)[I

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    # getter for: Lcom/android/camera/ui/RulerSettingPopup;->mValueIndex:I
    invoke-static {v4}, Lcom/android/camera/ui/RulerSettingPopup;->access$500(Lcom/android/camera/ui/RulerSettingPopup;)I

    move-result v4

    aget v3, v3, v4

    # setter for: Lcom/android/camera/ui/RulerSettingPopup;->mCursorX:I
    invoke-static {v2, v3}, Lcom/android/camera/ui/RulerSettingPopup;->access$102(Lcom/android/camera/ui/RulerSettingPopup;I)I

    .line 51
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    # getter for: Lcom/android/camera/ui/RulerSettingPopup;->mCursor:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/camera/ui/RulerSettingPopup;->access$000(Lcom/android/camera/ui/RulerSettingPopup;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 52
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    invoke-virtual {v2}, Lcom/android/camera/ui/RulerSettingPopup;->invalidate()V

    .line 53
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    iget-object v2, v2, Lcom/android/camera/ui/RulerSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    # getter for: Lcom/android/camera/ui/RulerSettingPopup;->mValueCount:I
    invoke-static {v3}, Lcom/android/camera/ui/RulerSettingPopup;->access$600(Lcom/android/camera/ui/RulerSettingPopup;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    # getter for: Lcom/android/camera/ui/RulerSettingPopup;->mValueIndex:I
    invoke-static {v4}, Lcom/android/camera/ui/RulerSettingPopup;->access$500(Lcom/android/camera/ui/RulerSettingPopup;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 54
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    iget-object v2, v2, Lcom/android/camera/ui/RulerSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup$1;->this$0:Lcom/android/camera/ui/RulerSettingPopup;

    iget-object v2, v2, Lcom/android/camera/ui/RulerSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    invoke-interface {v2}, Lcom/android/camera/ui/AbstractSettingPopup$Listener;->onSettingChanged()V

    goto/16 :goto_0
.end method
