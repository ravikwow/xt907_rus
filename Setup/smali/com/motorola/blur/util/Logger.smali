.class public final Lcom/motorola/blur/util/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final DEVELOPMENT:Z = false

.field public static final DUMP:Z = false

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field private static final INITIAL_CAPACITY:I = 0x40

.field public static final MAX_TAG_LENGTH:I = 0x17

.field public static MSG_DEVELOPMENT:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_TIMER:Ljava/lang/String; = "TIMER"

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static sTimer:Landroid/util/TimingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/motorola/blur/util/Logger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/util/Logger;->TAG:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/blur/util/Logger;->MSG_DEVELOPMENT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs buildLogMessage([Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0, "messages"    # [Ljava/lang/Object;

    .prologue
    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 317
    .local v3, "logMessage":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 318
    .local v4, "message":Ljava/lang/Object;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    .end local v4    # "message":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "messages"    # [Ljava/lang/Object;

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "byteWritten":I
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/motorola/blur/util/Logger;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-static {p2}, Lcom/motorola/blur/util/Logger;->buildLogMessage([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 136
    :cond_0
    return v0
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messages"    # [Ljava/lang/Object;

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "byteWritten":I
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/motorola/blur/util/Logger;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-static {p1}, Lcom/motorola/blur/util/Logger;->buildLogMessage([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 120
    :cond_0
    return v0
.end method

.method public static dump()V
    .locals 2

    .prologue
    .line 99
    const-string v0, "TIMER"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {}, Lcom/motorola/blur/util/Logger;->getTimer()Landroid/util/TimingLogger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 102
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "messages"    # [Ljava/lang/Object;

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "byteWritten":I
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/motorola/blur/util/Logger;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-static {p2}, Lcom/motorola/blur/util/Logger;->buildLogMessage([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 167
    :cond_0
    return v0
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messages"    # [Ljava/lang/Object;

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "byteWritten":I
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/motorola/blur/util/Logger;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-static {p1}, Lcom/motorola/blur/util/Logger;->buildLogMessage([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 151
    :cond_0
    return v0
.end method

.method private static declared-synchronized getTimer()Landroid/util/TimingLogger;
    .locals 4

    .prologue
    .line 75
    const-class v1, Lcom/motorola/blur/util/Logger;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/blur/util/Logger;->sTimer:Landroid/util/TimingLogger;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Landroid/util/TimingLogger;

    const-string v2, "TIMER"

    const-string v3, "TIMER"

    invoke-direct {v0, v2, v3}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/blur/util/Logger;->sTimer:Landroid/util/TimingLogger;

    .line 78
    :cond_0
    sget-object v0, Lcom/motorola/blur/util/Logger;->sTimer:Landroid/util/TimingLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "messages"    # [Ljava/lang/Object;

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "byteWritten":I
    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/motorola/blur/util/Logger;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-static {p2}, Lcom/motorola/blur/util/Logger;->buildLogMessage([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 198
    :cond_0
    return v0
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messages"    # [Ljava/lang/Object;

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "byteWritten":I
    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/motorola/blur/util/Logger;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    invoke-static {p1}, Lcom/motorola/blur/util/Logger;->buildLogMessage([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 182
    :cond_0
    return v0
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "level"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 290
    const-string v4, "blur.logstate"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "logState":Ljava/lang/String;
    const-string v4, "always"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 304
    :cond_0
    :goto_0
    return v2

    .line 293
    :cond_1
    const-string v4, "disabled"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 301
    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v4, Lcom/motorola/blur/util/Logger;->TAG:Ljava/lang/String;

    const-string v5, "Logger.isLoggable() caught an exception when calling Log.isLoggable()."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    const/4 v4, 0x4

    if-lt p1, v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public static varargs println(ILjava/lang/String;[Ljava/lang/Object;)I
    .locals 2
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # [Ljava/lang/Object;

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "byteWritten":I
    invoke-static {p1, p0}, Lcom/motorola/blur/util/Logger;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-static {p2}, Lcom/motorola/blur/util/Logger;->buildLogMessage([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 276
    :cond_0
    return v0
.end method

.method public static registerTag(Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 84
    return-void
.end method

.method public static reset()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "TIMER"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lcom/motorola/blur/util/Logger;->getTimer()Landroid/util/TimingLogger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/TimingLogger;->reset()V

    .line 96
    :cond_0
    return-void
.end method

.method public static setMsgLog(Z)V
    .locals 0
    .param p0, "log"    # Z

    .prologue
    .line 105
    sput-boolean p0, Lcom/motorola/blur/util/Logger;->MSG_DEVELOPMENT:Z

    .line 106
    return-void
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 87
    const-string v0, "TIMER"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {}, Lcom/motorola/blur/util/Logger;->getTimer()Landroid/util/TimingLogger;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    const-string v3, ":"

    aput-object v3, v1, v2

    aput-object p1, v1, v4

    invoke-static {v1}, Lcom/motorola/blur/util/Logger;->buildLogMessage([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "messages"    # [Ljava/lang/Object;

    .prologue
    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "byteWritten":I
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/motorola/blur/util/Logger;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    invoke-static {p2}, Lcom/motorola/blur/util/Logger;->buildLogMessage([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 229
    :cond_0
    return v0
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messages"    # [Ljava/lang/Object;

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "byteWritten":I
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/motorola/blur/util/Logger;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    invoke-static {p1}, Lcom/motorola/blur/util/Logger;->buildLogMessage([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 213
    :cond_0
    return v0
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "messages"    # [Ljava/lang/Object;

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "byteWritten":I
    const/4 v1, 0x5

    invoke-static {p0, v1}, Lcom/motorola/blur/util/Logger;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    invoke-static {p2}, Lcom/motorola/blur/util/Logger;->buildLogMessage([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 260
    :cond_0
    return v0
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messages"    # [Ljava/lang/Object;

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "byteWritten":I
    const/4 v1, 0x5

    invoke-static {p0, v1}, Lcom/motorola/blur/util/Logger;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    invoke-static {p1}, Lcom/motorola/blur/util/Logger;->buildLogMessage([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 244
    :cond_0
    return v0
.end method
