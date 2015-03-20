.class public Lcom/motorola/messaging/util/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field private static sNowTime:Landroid/text/format/Time;

.field private static sThenTime:Landroid/text/format/Time;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLongDateTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "when"    # J

    .prologue
    const/4 v3, 0x0

    .line 43
    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/util/DateUtil;->getRelativeTimeSpanString(Landroid/content/Context;JIIZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;JIIZ)Ljava/lang/String;
    .locals 11

    .prologue
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 75
    sub-long v6, v0, p1

    .line 77
    const-class v8, Lcom/motorola/messaging/util/DateUtil;

    monitor-enter v8

    .line 78
    :try_start_0
    sget-object v2, Lcom/motorola/messaging/util/DateUtil;->sNowTime:Landroid/text/format/Time;

    if-nez v2, :cond_0

    .line 79
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    sput-object v2, Lcom/motorola/messaging/util/DateUtil;->sNowTime:Landroid/text/format/Time;

    .line 82
    :cond_0
    sget-object v2, Lcom/motorola/messaging/util/DateUtil;->sThenTime:Landroid/text/format/Time;

    if-nez v2, :cond_1

    .line 83
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    sput-object v2, Lcom/motorola/messaging/util/DateUtil;->sThenTime:Landroid/text/format/Time;

    .line 86
    :cond_1
    sget-object v2, Lcom/motorola/messaging/util/DateUtil;->sNowTime:Landroid/text/format/Time;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 87
    sget-object v0, Lcom/motorola/messaging/util/DateUtil;->sThenTime:Landroid/text/format/Time;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 89
    or-int/lit8 v5, p4, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v9

    .line 91
    const-string v10, ""

    .line 93
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-ltz v0, :cond_3

    const-wide/32 v0, 0x5265c00

    cmp-long v0, v6, v0

    if-gez v0, :cond_3

    sget-object v0, Lcom/motorola/messaging/util/DateUtil;->sNowTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    sget-object v1, Lcom/motorola/messaging/util/DateUtil;->sThenTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->weekDay:I

    if-ne v0, v1, :cond_3

    .line 96
    or-int/lit8 v5, p4, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    .line 97
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    .line 118
    :cond_2
    :goto_0
    monitor-exit v8

    .line 119
    return-object v0

    .line 98
    :cond_3
    sget-object v0, Lcom/motorola/messaging/util/DateUtil;->sNowTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    sget-object v1, Lcom/motorola/messaging/util/DateUtil;->sThenTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->year:I

    if-eq v0, v1, :cond_4

    .line 100
    or-int/lit8 v5, p3, 0x14

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    .line 102
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    .line 103
    if-eqz p5, :cond_2

    .line 105
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104008c

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    const/4 v4, 0x1

    aput-object v10, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_4
    or-int/lit8 v5, p3, 0x10

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    .line 111
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    .line 112
    if-eqz p5, :cond_2

    .line 114
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104008c

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    const/4 v4, 0x1

    aput-object v10, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getShortDateTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "when"    # J

    .prologue
    .line 31
    const/high16 v3, 0x10000

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/util/DateUtil;->getRelativeTimeSpanString(Landroid/content/Context;JIIZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
