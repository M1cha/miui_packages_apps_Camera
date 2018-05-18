.class public Lcom/android/camera/module/impl/ImplFactory;
.super Ljava/lang/Object;
.source "ImplFactory.java"


# instance fields
.field private additionalProtocolList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;",
            ">;"
        }
    .end annotation
.end field

.field private baseProtocolList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private varargs initTypes(Lcom/android/camera/ActivityBase;Z[I)V
    .locals 5

    const/4 v2, 0x0

    array-length v3, p3

    :goto_0
    if-ge v2, v3, :cond_4

    aget v1, p3, v2

    const/4 v0, 0x0

    sparse-switch v1, :sswitch_data_0

    :goto_1
    if-nez v0, :cond_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :sswitch_0
    invoke-static {p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    move-result-object v0

    goto :goto_1

    :sswitch_1
    invoke-static {p1}, Lcom/android/camera/module/impl/component/BackStackImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/BackStackImpl;

    move-result-object v0

    goto :goto_1

    :sswitch_2
    invoke-static {}, Lcom/android/camera/module/impl/component/BeautyRecordingImpl;->create()Lcom/android/camera/module/impl/component/BeautyRecordingImpl;

    move-result-object v0

    goto :goto_1

    :sswitch_3
    invoke-static {p1}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;->registerProtocol()V

    if-eqz p2, :cond_2

    iget-object v4, p0, Lcom/android/camera/module/impl/ImplFactory;->baseProtocolList:Ljava/util/List;

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/camera/module/impl/ImplFactory;->baseProtocolList:Ljava/util/List;

    :cond_1
    iget-object v4, p0, Lcom/android/camera/module/impl/ImplFactory;->baseProtocolList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/android/camera/module/impl/ImplFactory;->additionalProtocolList:Ljava/util/List;

    if-nez v4, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/camera/module/impl/ImplFactory;->additionalProtocolList:Ljava/util/List;

    :cond_3
    iget-object v4, p0, Lcom/android/camera/module/impl/ImplFactory;->additionalProtocolList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xa4 -> :sswitch_0
        0xab -> :sswitch_1
        0xad -> :sswitch_2
        0xae -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public detachAdditional()V
    .locals 3

    iget-object v2, p0, Lcom/android/camera/module/impl/ImplFactory;->additionalProtocolList:Ljava/util/List;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/impl/ImplFactory;->additionalProtocolList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;->unRegisterProtocol()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public detachAll()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/impl/ImplFactory;->detachAdditional()V

    iget-object v2, p0, Lcom/android/camera/module/impl/ImplFactory;->baseProtocolList:Ljava/util/List;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/impl/ImplFactory;->baseProtocolList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;->unRegisterProtocol()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs initAdditional(Lcom/android/camera/ActivityBase;[I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/module/impl/ImplFactory;->initTypes(Lcom/android/camera/ActivityBase;Z[I)V

    return-void
.end method

.method public varargs initBase(Lcom/android/camera/ActivityBase;[I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/module/impl/ImplFactory;->initTypes(Lcom/android/camera/ActivityBase;Z[I)V

    return-void
.end method
