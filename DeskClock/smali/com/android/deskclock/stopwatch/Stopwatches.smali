.class public Lcom/android/deskclock/stopwatch/Stopwatches;
.super Ljava/lang/Object;
.source "Stopwatches.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildShareResults(Landroid/content/Context;J[J)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J
    .param p3, "laps"    # [J

    .prologue
    .line 101
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/deskclock/stopwatch/Stopwatches;->getTimeText(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lcom/android/deskclock/stopwatch/Stopwatches;->buildShareResults(Landroid/content/Context;Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildShareResults(Landroid/content/Context;Ljava/lang/String;[J)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # Ljava/lang/String;
    .param p2, "laps"    # [J

    .prologue
    const/4 v2, 0x0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const v3, 0x7f0d0064

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    if-nez p2, :cond_0

    .line 80
    .local v2, "lapsNum":I
    :goto_0
    if-nez v2, :cond_1

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    :goto_1
    return-object v3

    .line 79
    .end local v2    # "lapsNum":I
    :cond_0
    array-length v2, p2

    goto :goto_0

    .line 84
    .restart local v2    # "lapsNum":I
    :cond_1
    const v3, 0x7f0d0065

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    if-gt v1, v2, :cond_2

    .line 87
    sub-int v3, v2, v1

    aget-wide v3, p2, v3

    invoke-static {p0, v3, v4, v1}, Lcom/android/deskclock/stopwatch/Stopwatches;->getTimeText(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 90
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static formatTimeText(JLjava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "time"    # J
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    .line 151
    const-wide/16 v9, 0x0

    cmp-long v9, p0, v9

    if-gez v9, :cond_0

    .line 152
    const-wide/16 p0, 0x0

    .line 155
    :cond_0
    const-wide/16 v9, 0x3e8

    div-long v7, p0, v9

    .line 156
    .local v7, "seconds":J
    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v7

    sub-long v9, p0, v9

    const-wide/16 v11, 0xa

    div-long v3, v9, v11

    .line 157
    .local v3, "hundreds":J
    const-wide/16 v9, 0x3c

    div-long v5, v7, v9

    .line 158
    .local v5, "minutes":J
    const-wide/16 v9, 0x3c

    mul-long/2addr v9, v5

    sub-long/2addr v7, v9

    .line 159
    const-wide/16 v9, 0x3c

    div-long v1, v5, v9

    .line 160
    .local v1, "hours":J
    const-wide/16 v9, 0x3c

    mul-long/2addr v9, v1

    sub-long/2addr v5, v9

    .line 161
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object v9

    invoke-virtual {v9}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v0

    .line 162
    .local v0, "decimalSeparator":C
    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {p2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public static getShareTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "mLabels":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    array-length v3, v0

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    aget-object v1, v0, v1

    return-object v1
.end method

.method public static getTimeText(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J
    .param p3, "lap"    # I

    .prologue
    .line 112
    const-wide/16 v12, 0x0

    cmp-long v12, p1, v12

    if-gez v12, :cond_0

    .line 113
    const-wide/16 p1, 0x0

    .line 116
    :cond_0
    const/4 v12, -0x1

    move/from16 v0, p3

    if-eq v0, v12, :cond_1

    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0010

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "formats":[Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object v12

    invoke-virtual {v12}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v1

    .line 125
    .local v1, "decimalSeparator":C
    const-wide/16 v12, 0x3e8

    div-long v10, p1, v12

    .line 126
    .local v10, "seconds":J
    const-wide/16 v12, 0x3e8

    mul-long/2addr v12, v10

    sub-long v12, p1, v12

    const-wide/16 v14, 0xa

    div-long v6, v12, v14

    .line 127
    .local v6, "hundreds":J
    const-wide/16 v12, 0x3c

    div-long v8, v10, v12

    .line 128
    .local v8, "minutes":J
    const-wide/16 v12, 0x3c

    mul-long/2addr v12, v8

    sub-long/2addr v10, v12

    .line 129
    const-wide/16 v12, 0x3c

    div-long v4, v8, v12

    .line 130
    .local v4, "hours":J
    const-wide/16 v12, 0x3c

    mul-long/2addr v12, v4

    sub-long/2addr v8, v12

    .line 131
    const-wide/16 v12, 0x64

    cmp-long v12, v4, v12

    if-ltz v12, :cond_2

    .line 132
    const/4 v2, 0x4

    .line 142
    .local v2, "formatIndex":I
    :goto_1
    aget-object v12, v3, v2

    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x5

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 119
    .end local v1    # "decimalSeparator":C
    .end local v2    # "formatIndex":I
    .end local v3    # "formats":[Ljava/lang/String;
    .end local v4    # "hours":J
    .end local v6    # "hundreds":J
    .end local v8    # "minutes":J
    .end local v10    # "seconds":J
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a000f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "formats":[Ljava/lang/String;
    goto :goto_0

    .line 133
    .restart local v1    # "decimalSeparator":C
    .restart local v4    # "hours":J
    .restart local v6    # "hundreds":J
    .restart local v8    # "minutes":J
    .restart local v10    # "seconds":J
    :cond_2
    const-wide/16 v12, 0xa

    cmp-long v12, v4, v12

    if-ltz v12, :cond_3

    .line 134
    const/4 v2, 0x3

    .restart local v2    # "formatIndex":I
    goto :goto_1

    .line 135
    .end local v2    # "formatIndex":I
    :cond_3
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-lez v12, :cond_4

    .line 136
    const/4 v2, 0x2

    .restart local v2    # "formatIndex":I
    goto :goto_1

    .line 137
    .end local v2    # "formatIndex":I
    :cond_4
    const-wide/16 v12, 0xa

    cmp-long v12, v8, v12

    if-ltz v12, :cond_5

    .line 138
    const/4 v2, 0x1

    .restart local v2    # "formatIndex":I
    goto :goto_1

    .line 140
    .end local v2    # "formatIndex":I
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "formatIndex":I
    goto :goto_1
.end method
