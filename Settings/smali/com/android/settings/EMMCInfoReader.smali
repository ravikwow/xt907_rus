.class public Lcom/android/settings/EMMCInfoReader;
.super Ljava/lang/Object;
.source "EMMCInfoReader.java"


# instance fields
.field private mEMMCSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/EMMCInfoReader;->mEMMCSize:J

    return-void
.end method


# virtual methods
.method public getTotalSize()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/android/settings/EMMCInfoReader;->mEMMCSize:J

    return-wide v0
.end method

.method public readEMMCInfo()V
    .locals 13

    .prologue
    const/4 v11, -0x1

    .line 33
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 34
    .local v4, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v2, 0x0

    .line 36
    .local v2, "reader":Ljava/io/BufferedReader;
    const-wide/16 v9, 0x0

    :try_start_0
    iput-wide v9, p0, Lcom/android/settings/EMMCInfoReader;->mEMMCSize:J

    .line 37
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v10, "/proc/partitions"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 39
    .local v5, "size":Ljava/lang/String;
    const/4 v6, 0x0

    .line 40
    .local v6, "size0":Ljava/lang/String;
    const/4 v7, 0x0

    .line 41
    .local v7, "size1":Ljava/lang/String;
    :try_start_1
    const-string v1, ""

    .line 42
    .local v1, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    .line 43
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 44
    if-eqz v1, :cond_0

    .line 52
    const-string v9, "mmcblk1"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v11, :cond_1

    const-string v9, "mmcblk1p"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v11, :cond_1

    .line 53
    const-string v9, "\\s+"

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 54
    .local v8, "strs":[Ljava/lang/String;
    const/4 v9, 0x3

    aget-object v7, v8, v9

    .line 56
    .end local v8    # "strs":[Ljava/lang/String;
    :cond_1
    const-string v9, "mmcblk0"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v11, :cond_2

    const-string v9, "mmcblk0p"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v11, :cond_2

    .line 57
    const-string v9, "\\s+"

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 58
    .restart local v8    # "strs":[Ljava/lang/String;
    const/4 v9, 0x3

    aget-object v6, v8, v9

    .line 60
    .end local v8    # "strs":[Ljava/lang/String;
    :cond_2
    const-string v9, "mmcblk0p5"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v11, :cond_3

    .line 61
    move-object v5, v6

    .line 62
    :cond_3
    const-string v9, "mmcblk1p5"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v11, :cond_0

    .line 63
    move-object v5, v7

    goto :goto_0

    .line 67
    :cond_4
    const-string v9, "EMMCInfoReader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "line:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    if-eqz v5, :cond_5

    .line 69
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x400

    mul-long/2addr v9, v11

    iput-wide v9, p0, Lcom/android/settings/EMMCInfoReader;->mEMMCSize:J

    .line 70
    :cond_5
    const-string v9, "EMMCInfoReader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "size:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/settings/EMMCInfoReader;->mEMMCSize:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    if-eqz v3, :cond_6

    .line 77
    :try_start_2
    const-string v9, "EMMCInfoReader"

    const-string v10, "close"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 83
    :cond_6
    :goto_1
    const-string v9, "EMMCInfoReader"

    const-string v10, "return"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v2, v3

    .line 86
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "size":Ljava/lang/String;
    .end local v6    # "size0":Ljava/lang/String;
    .end local v7    # "size1":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :goto_2
    return-void

    .line 79
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "size":Ljava/lang/String;
    .restart local v6    # "size0":Ljava/lang/String;
    .restart local v7    # "size1":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 71
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "size":Ljava/lang/String;
    .end local v6    # "size0":Ljava/lang/String;
    .end local v7    # "size1":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v9

    .line 75
    :goto_3
    if-eqz v2, :cond_7

    .line 77
    :try_start_3
    const-string v9, "EMMCInfoReader"

    const-string v10, "close"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 83
    :cond_7
    :goto_4
    const-string v9, "EMMCInfoReader"

    const-string v10, "return"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_2

    .line 79
    :catch_2
    move-exception v0

    .line 80
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 72
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v9

    .line 75
    :goto_5
    if-eqz v2, :cond_8

    .line 77
    :try_start_4
    const-string v9, "EMMCInfoReader"

    const-string v10, "close"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 83
    :cond_8
    :goto_6
    const-string v9, "EMMCInfoReader"

    const-string v10, "return"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_2

    .line 79
    :catch_4
    move-exception v0

    .line 80
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 73
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v9

    .line 75
    :goto_7
    if-eqz v2, :cond_9

    .line 77
    :try_start_5
    const-string v9, "EMMCInfoReader"

    const-string v10, "close"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 83
    :cond_9
    :goto_8
    const-string v9, "EMMCInfoReader"

    const-string v10, "return"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_2

    .line 79
    :catch_6
    move-exception v0

    .line 80
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 75
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_9
    if-eqz v2, :cond_a

    .line 77
    :try_start_6
    const-string v10, "EMMCInfoReader"

    const-string v11, "close"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 83
    :cond_a
    :goto_a
    const-string v10, "EMMCInfoReader"

    const-string v11, "return"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v9

    .line 79
    :catch_7
    move-exception v0

    .line 80
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    .line 75
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "size":Ljava/lang/String;
    .restart local v6    # "size0":Ljava/lang/String;
    .restart local v7    # "size1":Ljava/lang/String;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_9

    .line 73
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v9

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_7

    .line 72
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_9
    move-exception v9

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 71
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_a
    move-exception v9

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_3
.end method
