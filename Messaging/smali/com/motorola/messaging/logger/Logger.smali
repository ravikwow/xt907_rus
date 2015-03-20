.class public Lcom/motorola/messaging/logger/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static BUILD_TYPE:Ljava/lang/String;

.field public static final IS_DEBUG_BUILD:Z

.field public static final LOG_ENABLED:Z

.field public static final MSG_DEBUG_ALL:Z

.field public static final MSG_DEVELOPMENT:Z

.field public static final MSG_UT:Z

.field public static final SQLITE_ENABLED:Z

.field static final fileToSdCard:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 30
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sput-object v0, Lcom/motorola/messaging/logger/Logger;->BUILD_TYPE:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/motorola/messaging/logger/Logger;->BUILD_TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/motorola/messaging/logger/Logger;->BUILD_TYPE:Ljava/lang/String;

    const-string v2, "userdebug"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/logger/Logger;->IS_DEBUG_BUILD:Z

    .line 35
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->IS_DEBUG_BUILD:Z

    sput-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    .line 37
    sget-object v0, Lcom/motorola/messaging/logger/Logger;->BUILD_TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_UT:Z

    .line 39
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/logger/Logger;->LOG_ENABLED:Z

    .line 40
    sput-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEBUG_ALL:Z

    .line 41
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/logger/Logger;->SQLITE_ENABLED:Z

    .line 45
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "TxtMsgLog.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/messaging/logger/Logger;->fileToSdCard:Ljava/io/File;

    return-void

    :cond_1
    move v0, v1

    .line 32
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addStackTrace(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "level"    # I

    .prologue
    .line 210
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 211
    .local v2, "stack":[Ljava/lang/StackTraceElement;
    const-string v4, " <- "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    array-length v4, v2

    if-le v4, p1, :cond_1

    move v3, p1

    .line 213
    .local v3, "stop":I
    :goto_0
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 214
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "methodName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    add-int/lit8 v4, v0, 0x1

    if-eq v4, v3, :cond_0

    .line 217
    const-string v4, " <- "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 212
    .end local v0    # "i":I
    .end local v1    # "methodName":Ljava/lang/String;
    .end local v3    # "stop":I
    :cond_1
    array-length v3, v2

    goto :goto_0

    .line 221
    .restart local v0    # "i":I
    .restart local v3    # "stop":I
    :cond_2
    return-object p0
.end method

.method public static addThread(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 201
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 203
    .local v0, "current":Ljava/lang/Thread;
    const-string v1, "["

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 205
    const-string v1, "] "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    return-object p0
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "strLog"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 85
    const/16 v3, 0xc

    move-object v0, p0

    move v2, v1

    move v4, v1

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/logger/Logger;->log(Ljava/lang/String;ZZIZLjava/lang/String;)V

    .line 86
    return-void
.end method

.method public static varargs debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 90
    const/16 v3, 0xc

    move-object v0, p0

    move v2, v1

    move v4, v1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/logger/Logger;->log(Ljava/lang/String;ZZIZLjava/lang/String;[Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public static debug(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "addThreadInfo"    # Z
    .param p2, "addStackTraceInfo"    # Z
    .param p3, "strLog"    # Ljava/lang/String;

    .prologue
    .line 95
    const/16 v3, 0xc

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/logger/Logger;->log(Ljava/lang/String;ZZIZLjava/lang/String;)V

    .line 96
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "strLog"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "strLog"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 180
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    return-void
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "strLog"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void
.end method

.method private static log(Ljava/lang/String;ZZIZLjava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "addThreadInfo"    # Z
    .param p2, "addStackTraceInfo"    # Z
    .param p3, "level"    # I
    .param p4, "isVerbose"    # Z
    .param p5, "stLog"    # Ljava/lang/String;

    .prologue
    .line 117
    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->LOG_ENABLED:Z

    if-nez v1, :cond_1

    if-eqz p4, :cond_0

    const-string v1, "Conversations"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-nez p4, :cond_4

    const-string v1, "Conversations"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 120
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v0, "strToLog":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_2

    .line 123
    invoke-static {v0}, Lcom/motorola/messaging/logger/Logger;->addThread(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 126
    :cond_2
    if-eqz p5, :cond_5

    .line 127
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :goto_0
    if-eqz p2, :cond_3

    .line 134
    invoke-static {v0, p3}, Lcom/motorola/messaging/logger/Logger;->addStackTrace(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 137
    :cond_3
    if-eqz p4, :cond_6

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v0    # "strToLog":Ljava/lang/StringBuilder;
    :cond_4
    :goto_1
    return-void

    .line 130
    .restart local v0    # "strToLog":Ljava/lang/StringBuilder;
    :cond_5
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 141
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static varargs log(Ljava/lang/String;ZZIZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "addThreadInfo"    # Z
    .param p2, "addStackTraceInfo"    # Z
    .param p3, "level"    # I
    .param p4, "isVerbose"    # Z
    .param p5, "format"    # Ljava/lang/String;
    .param p6, "args"    # [Ljava/lang/Object;

    .prologue
    .line 150
    invoke-static {p5, p6}, Lcom/motorola/messaging/logger/Logger;->logFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/logger/Logger;->log(Ljava/lang/String;ZZIZLjava/lang/String;)V

    .line 151
    return-void
.end method

.method private static varargs logFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 69
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 70
    :cond_0
    const/4 v1, 0x0

    .line 80
    :goto_0
    return-object v1

    .line 73
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 74
    aget-object v2, p1, v0

    instance-of v2, v2, [Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 75
    aget-object v2, p1, v0

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/messaging/logger/Logger;->prettyArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    .line 73
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    :cond_3
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    goto :goto_0
.end method

.method private static prettyArray([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [Ljava/lang/String;

    .prologue
    .line 52
    array-length v3, p0

    if-nez v3, :cond_0

    .line 53
    const-string v3, "[]"

    .line 65
    :goto_0
    return-object v3

    .line 56
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 58
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 59
    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    :cond_1
    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "strLog"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 100
    const/16 v3, 0xc

    const/4 v4, 0x1

    move-object v0, p0

    move v2, v1

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/logger/Logger;->log(Ljava/lang/String;ZZIZLjava/lang/String;)V

    .line 101
    return-void
.end method

.method public static varargs verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 105
    const/16 v3, 0xc

    const/4 v4, 0x1

    move-object v0, p0

    move v2, v1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/logger/Logger;->log(Ljava/lang/String;ZZIZLjava/lang/String;[Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method public static verbose(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "addThreadInfo"    # Z
    .param p2, "addStackTraceInfo"    # Z
    .param p3, "strLog"    # Ljava/lang/String;

    .prologue
    .line 110
    const/16 v3, 0xc

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/logger/Logger;->log(Ljava/lang/String;ZZIZLjava/lang/String;)V

    .line 111
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "strLog"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "strLog"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 163
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    return-void
.end method

.method public static varargs warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 159
    invoke-static {p1, p2}, Lcom/motorola/messaging/logger/Logger;->logFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method
