.class Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger;
.super Ljava/lang/Object;
.source "PanoMovingIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PanoMovingIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateChangeTrigger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCurrentState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mLatestState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mLatestTimes:I

.field private mMaxTimesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/camera/ui/PanoMovingIndicatorView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/PanoMovingIndicatorView;Ljava/lang/Object;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/HashMap",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger;->this$0:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger;->mLatestTimes:I

    iput-object p2, p0, Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger;->mLatestState:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger;->mCurrentState:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger;->mMaxTimesMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public setCurrentState(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger;->mCurrentState:Ljava/lang/Object;

    return-void
.end method
