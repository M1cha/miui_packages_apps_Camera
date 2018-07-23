.class public Lmiui/reflect/ReflectUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final OBJECT_CONSTRUCTOR:Ljava/lang/String; = "<init>"

.field private static a:[Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static b:[Ljava/lang/String; = null

.field private static final c:Ljava/lang/String; = "this$0"

.field private static final d:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Class;

    .line 17
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    .line 18
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v4

    .line 19
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    .line 20
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    .line 21
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v7

    .line 22
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 23
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 24
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 25
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 16
    sput-object v0, Lmiui/reflect/ReflectUtils;->a:[Ljava/lang/Class;

    .line 28
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 29
    const-string/jumbo v1, "Z"

    aput-object v1, v0, v3

    .line 30
    const-string/jumbo v1, "B"

    aput-object v1, v0, v4

    .line 31
    const-string/jumbo v1, "C"

    aput-object v1, v0, v5

    .line 32
    const-string/jumbo v1, "S"

    aput-object v1, v0, v6

    .line 33
    const-string/jumbo v1, "I"

    aput-object v1, v0, v7

    .line 34
    const-string/jumbo v1, "J"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 35
    const-string/jumbo v1, "F"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 36
    const-string/jumbo v1, "D"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 37
    const-string/jumbo v1, "V"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 28
    sput-object v0, Lmiui/reflect/ReflectUtils;->b:[Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 40
    sput-object v0, Lmiui/reflect/ReflectUtils;->d:Ljava/util/WeakHashMap;

    .line 13
    return-void
.end method

.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/InstantiationException;

    const-string/jumbo v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAdditionalField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    if-nez p0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "object must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    if-nez p1, :cond_1

    .line 199
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "fieldName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_1
    sget-object v1, Lmiui/reflect/ReflectUtils;->d:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 204
    :try_start_0
    sget-object v0, Lmiui/reflect/ReflectUtils;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    if-nez v0, :cond_2

    monitor-exit v1

    .line 206
    return-object v2

    :cond_2
    monitor-exit v1

    .line 210
    monitor-enter v0

    .line 211
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 210
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getSignature(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmiui/reflect/ReflectUtils;->a:[Ljava/lang/Class;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 72
    sget-object v1, Lmiui/reflect/ReflectUtils;->a:[Ljava/lang/Class;

    aget-object v1, v1, v0

    if-ne p0, v1, :cond_0

    .line 73
    sget-object v1, Lmiui/reflect/ReflectUtils;->b:[Ljava/lang/String;

    aget-object v0, v1, v0

    return-object v0

    .line 71
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/reflect/ReflectUtils;->getSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmiui/reflect/ReflectUtils;->a:[Ljava/lang/Class;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 87
    sget-object v1, Lmiui/reflect/ReflectUtils;->a:[Ljava/lang/Class;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    sget-object v1, Lmiui/reflect/ReflectUtils;->b:[Ljava/lang/String;

    aget-object p0, v1, v0

    .line 86
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_1
    const-string/jumbo v0, "."

    const-string/jumbo v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 93
    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getSignature([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    if-eqz p0, :cond_0

    .line 106
    const/4 v0, 0x0

    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 107
    invoke-static {v3}, Lmiui/reflect/ReflectUtils;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    invoke-static {p1}, Lmiui/reflect/ReflectUtils;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSurroundingThis(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "this$0"

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lmiui/reflect/ReflectUtils;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static removeAdditionalField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 224
    if-nez p0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "object must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    if-nez p1, :cond_1

    .line 229
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "fieldName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_1
    sget-object v1, Lmiui/reflect/ReflectUtils;->d:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 234
    :try_start_0
    sget-object v0, Lmiui/reflect/ReflectUtils;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    if-nez v0, :cond_2

    monitor-exit v1

    .line 236
    return-object v2

    :cond_2
    monitor-exit v1

    .line 240
    monitor-enter v0

    .line 241
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 240
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setAdditionalField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 163
    if-nez p0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "object must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    if-nez p1, :cond_1

    .line 168
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "fieldName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1
    sget-object v1, Lmiui/reflect/ReflectUtils;->d:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 173
    :try_start_0
    sget-object v0, Lmiui/reflect/ReflectUtils;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 174
    if-nez v0, :cond_2

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 176
    sget-object v2, Lmiui/reflect/ReflectUtils;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    .line 180
    monitor-enter v0

    .line 181
    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 180
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static updateField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/reflect/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 130
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 131
    new-instance v0, Lmiui/reflect/IllegalArgumentException;

    const-string/jumbo v1, "clazz and holder cannot be all null"

    invoke-direct {v0, v1}, Lmiui/reflect/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    if-nez p0, :cond_1

    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 138
    :cond_1
    :goto_0
    if-eqz p0, :cond_4

    .line 139
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v0, 0x0

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 140
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 142
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p2, :cond_2

    .line 143
    invoke-virtual {v3, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    :catch_0
    move-exception v0

    .line 147
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 138
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 151
    :cond_4
    return-void
.end method
