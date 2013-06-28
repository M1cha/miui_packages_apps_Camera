.class public Lmiui/os/Shell;
.super Ljava/lang/Object;
.source "Shell.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Shell"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "shell_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final boostCpuPulse()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lmiui/os/Shell;->nativeBoostCpuPulse()Z

    move-result v0

    goto :goto_0
.end method

.method public static chmod(Ljava/lang/String;I)Z
    .locals 1
    .parameter "path"
    .parameter "mode"

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/os/Shell;->nativeChmod(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static chmodRecursion(Ljava/lang/String;I)Z
    .locals 1
    .parameter "path"
    .parameter "mode"

    .prologue
    .line 14
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lmiui/os/Shell;->nativeChmod(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static chown(Ljava/lang/String;II)Z
    .locals 1
    .parameter "path"
    .parameter "owner"
    .parameter "group"

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lmiui/os/Shell;->nativeChown(Ljava/lang/String;III)Z

    move-result v0

    return v0
.end method

.method public static chownRecursion(Ljava/lang/String;II)Z
    .locals 1
    .parameter "path"
    .parameter "owner"
    .parameter "group"

    .prologue
    .line 22
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lmiui/os/Shell;->nativeChown(Ljava/lang/String;III)Z

    move-result v0

    return v0
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 30
    invoke-static {p0, p1}, Lmiui/os/Shell;->nativeCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static link(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "oldPath"
    .parameter "newPath"

    .prologue
    .line 34
    invoke-static {p0, p1}, Lmiui/os/Shell;->nativeLink(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static mkdirs(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 38
    invoke-static {p0}, Lmiui/os/Shell;->nativeMkdirs(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "oldPath"
    .parameter "newPath"

    .prologue
    .line 42
    invoke-static {p0, p1}, Lmiui/os/Shell;->nativeMove(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static native nativeBoostCpuPulse()Z
.end method

.method private static native nativeChmod(Ljava/lang/String;II)Z
.end method

.method private static native nativeChown(Ljava/lang/String;III)Z
.end method

.method private static native nativeCopy(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeLink(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeMkdirs(Ljava/lang/String;)Z
.end method

.method private static native nativeMove(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeRemove(Ljava/lang/String;)Z
.end method

.method private static native nativeRun(Ljava/lang/String;)Z
.end method

.method private static native nativeRunShell(Ljava/lang/String;)Z
.end method

.method private static native nativeWrite(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static remove(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 46
    invoke-static {p0}, Lmiui/os/Shell;->nativeRemove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs run(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 2
    .parameter "command"
    .parameter "args"

    .prologue
    .line 50
    array-length v1, p1

    if-lez v1, :cond_0

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, cmd:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lmiui/os/Shell;->nativeRun(Ljava/lang/String;)Z

    move-result v1

    return v1

    .end local v0           #cmd:Ljava/lang/String;
    :cond_0
    move-object v0, p0

    .line 50
    goto :goto_0
.end method

.method public static varargs runShell(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 2
    .parameter "command"
    .parameter "args"

    .prologue
    .line 55
    array-length v1, p1

    if-lez v1, :cond_0

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, cmd:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lmiui/os/Shell;->nativeRunShell(Ljava/lang/String;)Z

    move-result v1

    return v1

    .end local v0           #cmd:Ljava/lang/String;
    :cond_0
    move-object v0, p0

    .line 55
    goto :goto_0
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "path"
    .parameter "buffer"

    .prologue
    .line 26
    invoke-static {p0, p1}, Lmiui/os/Shell;->nativeWrite(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
