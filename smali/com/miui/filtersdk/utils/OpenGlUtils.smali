.class public Lcom/miui/filtersdk/utils/OpenGlUtils;
.super Ljava/lang/Object;
.source "OpenGlUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageFromAssetsFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-nez v4, :cond_2

    :goto_1
    throw v0

    :cond_2
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static loadProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x1

    new-array v3, v4, [I

    const v4, 0x8b31

    invoke-static {p0, v4}, Lcom/miui/filtersdk/utils/OpenGlUtils;->loadShader(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const v4, 0x8b30

    invoke-static {p1, v4}, Lcom/miui/filtersdk/utils/OpenGlUtils;->loadShader(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const v4, 0x8b82

    invoke-static {v1, v4, v3, v6}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v4, v3, v6

    if-lez v4, :cond_2

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v1

    :cond_0
    const-string/jumbo v4, "Load Program"

    const-string/jumbo v5, "Vertex Shader Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    const-string/jumbo v4, "Load Program"

    const-string/jumbo v5, "Fragment Shader Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    const-string/jumbo v4, "Load Program"

    const-string/jumbo v5, "Linking Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method private static loadShader(Ljava/lang/String;I)I
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [I

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const v2, 0x8b81

    invoke-static {v1, v2, v0, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v2, v0, v4

    if-eqz v2, :cond_0

    return v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Compilation\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Load Shader Failed"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public static loadTexture(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8

    const v7, 0x812f

    const/16 v6, 0x2601

    const/4 v5, 0x1

    const/16 v4, 0xde1

    const/4 v3, 0x0

    new-array v1, v5, [I

    invoke-static {v5, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v2, v1, v3

    if-nez v2, :cond_0

    :goto_0
    aget v2, v1, v3

    if-eqz v2, :cond_1

    aget v2, v1, v3

    return v2

    :cond_0
    invoke-static {p0, p1}, Lcom/miui/filtersdk/utils/OpenGlUtils;->getImageFromAssetsFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    aget v2, v1, v3

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2800

    invoke-static {v4, v2, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2801

    invoke-static {v4, v2, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2802

    invoke-static {v4, v2, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    invoke-static {v4, v2, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {v4, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string/jumbo v3, "loadTexture failed,path:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "OpenGlUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    return v2
.end method
