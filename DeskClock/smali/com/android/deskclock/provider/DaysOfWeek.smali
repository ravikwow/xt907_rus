.class public final Lcom/android/deskclock/provider/DaysOfWeek;
.super Ljava/lang/Object;
.source "DaysOfWeek.java"


# instance fields
.field private mBitSet:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "bitSet"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lcom/android/deskclock/provider/DaysOfWeek;->mBitSet:I

    .line 69
    return-void
.end method

.method private static convertBitIndexToDay(I)I
    .locals 1
    .param p0, "bitIndex"    # I

    .prologue
    .line 61
    add-int/lit8 v0, p0, 0x1

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static convertDayToBitIndex(I)I
    .locals 1
    .param p0, "day"    # I

    .prologue
    .line 53
    add-int/lit8 v0, p0, 0x5

    rem-int/lit8 v0, v0, 0x7

    return v0
.end method

.method private isBitEnabled(I)Z
    .locals 3
    .param p1, "bitIndex"    # I

    .prologue
    const/4 v0, 0x1

    .line 129
    iget v1, p0, Lcom/android/deskclock/provider/DaysOfWeek;->mBitSet:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setBit(IZ)V
    .locals 2
    .param p1, "bitIndex"    # I
    .param p2, "set"    # Z

    .prologue
    const/4 v1, 0x1

    .line 133
    if-eqz p2, :cond_0

    .line 134
    iget v0, p0, Lcom/android/deskclock/provider/DaysOfWeek;->mBitSet:I

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/deskclock/provider/DaysOfWeek;->mBitSet:I

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget v0, p0, Lcom/android/deskclock/provider/DaysOfWeek;->mBitSet:I

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/deskclock/provider/DaysOfWeek;->mBitSet:I

    goto :goto_0
.end method

.method private toString(Landroid/content/Context;ZZ)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "showNever"    # Z
    .param p3, "forAccessibility"    # Z

    .prologue
    const/4 v8, 0x1

    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v5, "ret":Ljava/lang/StringBuilder;
    iget v6, p0, Lcom/android/deskclock/provider/DaysOfWeek;->mBitSet:I

    if-nez v6, :cond_1

    .line 84
    if-eqz p2, :cond_0

    const v6, 0x7f0d0026

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 114
    :goto_0
    return-object v6

    .line 84
    :cond_0
    const-string v6, ""

    goto :goto_0

    .line 88
    :cond_1
    iget v6, p0, Lcom/android/deskclock/provider/DaysOfWeek;->mBitSet:I

    const/16 v7, 0x7f

    if-ne v6, v7, :cond_2

    .line 89
    const v6, 0x7f0d0025

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 93
    :cond_2
    const/4 v2, 0x0

    .line 94
    .local v2, "dayCount":I
    iget v1, p0, Lcom/android/deskclock/provider/DaysOfWeek;->mBitSet:I

    .line 95
    .local v1, "bitSet":I
    :goto_1
    if-lez v1, :cond_4

    .line 96
    and-int/lit8 v6, v1, 0x1

    if-ne v6, v8, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 97
    :cond_3
    shr-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 101
    :cond_4
    new-instance v4, Ljava/text/DateFormatSymbols;

    invoke-direct {v4}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 102
    .local v4, "dfs":Ljava/text/DateFormatSymbols;
    if-nez p3, :cond_5

    if-gt v2, v8, :cond_7

    :cond_5
    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "dayList":[Ljava/lang/String;
    :goto_2
    const/4 v0, 0x0

    .local v0, "bitIndex":I
    :goto_3
    const/4 v6, 0x7

    if-ge v0, v6, :cond_8

    .line 108
    iget v6, p0, Lcom/android/deskclock/provider/DaysOfWeek;->mBitSet:I

    shl-int v7, v8, v0

    and-int/2addr v6, v7

    if-eqz v6, :cond_6

    .line 109
    invoke-static {v0}, Lcom/android/deskclock/provider/DaysOfWeek;->convertBitIndexToDay(I)I

    move-result v6

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    add-int/lit8 v2, v2, -0x1

    .line 111
    if-lez v2, :cond_6

    const v6, 0x7f0d0027

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 107
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 102
    .end local v0    # "bitIndex":I
    .end local v3    # "dayList":[Ljava/lang/String;
    :cond_7
    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 114
    .restart local v0    # "bitIndex":I
    .restart local v3    # "dayList":[Ljava/lang/String;
    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method


# virtual methods
.method public calculateDaysToNextAlarm(Ljava/util/Calendar;)I
    .locals 5
    .param p1, "current"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x7

    .line 168
    invoke-virtual {p0}, Lcom/android/deskclock/provider/DaysOfWeek;->isRepeating()Z

    move-result v3

    if-nez v3, :cond_1

    .line 169
    const/4 v1, -0x1

    .line 180
    :cond_0
    return v1

    .line 172
    :cond_1
    const/4 v1, 0x0

    .line 173
    .local v1, "dayCount":I
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/deskclock/provider/DaysOfWeek;->convertDayToBitIndex(I)I

    move-result v0

    .line 174
    .local v0, "currentDayBit":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 175
    add-int v3, v0, v1

    rem-int/lit8 v2, v3, 0x7

    .line 176
    .local v2, "nextAlarmBit":I
    invoke-direct {p0, v2}, Lcom/android/deskclock/provider/DaysOfWeek;->isBitEnabled(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public clearAllDays()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/deskclock/provider/DaysOfWeek;->mBitSet:I

    .line 185
    return-void
.end method

.method public getBitSet()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/android/deskclock/provider/DaysOfWeek;->mBitSet:I

    return v0
.end method

.method public getSetDays()Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 150
    .local v1, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "bitIndex":I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    .line 151
    invoke-direct {p0, v0}, Lcom/android/deskclock/provider/DaysOfWeek;->isBitEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    invoke-static {v0}, Lcom/android/deskclock/provider/DaysOfWeek;->convertBitIndexToDay(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_1
    return-object v1
.end method

.method public isRepeating()Z
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/android/deskclock/provider/DaysOfWeek;->mBitSet:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBitSet(I)V
    .locals 0
    .param p1, "bitSet"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/android/deskclock/provider/DaysOfWeek;->mBitSet:I

    .line 142
    return-void
.end method

.method public varargs setDaysOfWeek(Z[I)V
    .locals 5
    .param p1, "value"    # Z
    .param p2, "daysOfWeek"    # [I

    .prologue
    .line 123
    move-object v0, p2

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 124
    .local v1, "day":I
    invoke-static {v1}, Lcom/android/deskclock/provider/DaysOfWeek;->convertDayToBitIndex(I)I

    move-result v4

    invoke-direct {p0, v4, p1}, Lcom/android/deskclock/provider/DaysOfWeek;->setBit(IZ)V

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "day":I
    :cond_0
    return-void
.end method

.method public toAccessibilityString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/deskclock/provider/DaysOfWeek;->toString(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DaysOfWeek{mBitSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/deskclock/provider/DaysOfWeek;->mBitSet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "showNever"    # Z

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/deskclock/provider/DaysOfWeek;->toString(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
