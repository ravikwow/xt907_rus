.class public Lcom/motorola/blur/util/mime/DateParser;
.super Ljava/lang/Object;
.source "DateParser.java"


# static fields
.field private static final CENTURY_START_YEAR:I

.field private static final DAY_OF_WEEK:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final PATTERN_DATE:Ljava/util/regex/Pattern;

.field private static final PATTERN_DATE_FALLBACK:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Jan"

    aput-object v1, v0, v3

    const-string v1, "Feb"

    aput-object v1, v0, v4

    const-string v1, "Mar"

    aput-object v1, v0, v5

    const-string v1, "Apr"

    aput-object v1, v0, v6

    const-string v1, "May"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Jun"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Jul"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Dec"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/util/mime/DateParser;->MONTHS:[Ljava/lang/String;

    .line 39
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Sun"

    aput-object v1, v0, v3

    const-string v1, "Mon"

    aput-object v1, v0, v4

    const-string v1, "Tue"

    aput-object v1, v0, v5

    const-string v1, "Wed"

    aput-object v1, v0, v6

    const-string v1, "Thu"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Fri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Sat"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/util/mime/DateParser;->DAY_OF_WEEK:[Ljava/lang/String;

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x22d50be

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    const-wide/16 v2, 0x24

    div-long/2addr v0, v2

    const-wide/16 v2, 0x7b4

    add-long/2addr v0, v2

    const-wide/16 v2, 0x50

    sub-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/motorola/blur/util/mime/DateParser;->CENTURY_START_YEAR:I

    .line 46
    const-string v0, "((Mon|Tue|Wed|Thu|Fri|Sat|Sun)\\s*,)?\\s*(\\d{1,2})[-\\s]*(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)[-\\s]*(\\d{2,4})\\s*((\\d{2})\\s*\\:\\s*(\\d{2})\\s*(\\:\\s*(\\d{2})\\s*)?)?\\s*([\\+|\\-]\\d{4})?\\s*(\\(.*\\))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/util/mime/DateParser;->PATTERN_DATE:Ljava/util/regex/Pattern;

    .line 52
    const-string v0, "((Mon|Tue|Wed|Thu|Fri|Sat|Sun)\\s*,)?\\s*(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)[-\\s]*(\\d{1,2})[-\\s]*(\\d{2,4})\\s*((\\d{2})\\s*\\:\\s*(\\d{2})\\s*(\\:\\s*(\\d{2})\\s*)?)?\\s*([\\+|\\-]\\d{4})?\\s*(\\(.*\\))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/util/mime/DateParser;->PATTERN_DATE_FALLBACK:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method private static appendTimeZone(Ljava/lang/StringBuilder;Ljava/util/Calendar;Z)Ljava/lang/StringBuilder;
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "cal"    # Ljava/util/Calendar;
    .param p2, "useName"    # Z

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x0

    .line 278
    if-eqz p2, :cond_1

    .line 279
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 280
    .local v1, "tz":Ljava/util/TimeZone;
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 281
    .local v0, "dst":Z
    :goto_0
    invoke-virtual {v1, v0, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .end local v0    # "dst":Z
    .end local v1    # "tz":Ljava/util/TimeZone;
    :goto_1
    return-object p0

    .restart local v1    # "tz":Ljava/util/TimeZone;
    :cond_0
    move v0, v2

    .line 280
    goto :goto_0

    .line 283
    .end local v1    # "tz":Ljava/util/TimeZone;
    :cond_1
    const/16 v2, 0xf

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    const v3, 0xea60

    div-int v1, v2, v3

    .line 284
    .local v1, "tz":I
    if-ltz v1, :cond_2

    .line 285
    const/16 v2, 0x2b

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    :goto_2
    div-int/lit8 v2, v1, 0x3c

    mul-int/lit8 v2, v2, 0x64

    rem-int/lit8 v3, v1, 0x3c

    add-int v1, v2, v3

    .line 292
    const/4 v2, 0x4

    invoke-static {p0, v1, v2}, Lcom/motorola/blur/util/mime/DateParser;->zeroPad(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 287
    :cond_2
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    neg-int v1, v1

    goto :goto_2
.end method

.method public static formatLong(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 12
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    const/16 v11, 0x3a

    const/16 v10, 0x2d

    const/16 v9, 0x20

    const/4 v8, 0x2

    .line 163
    if-eqz p0, :cond_0

    .line 164
    const/4 v7, 0x5

    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 165
    .local v0, "dayOfMonth":I
    invoke-virtual {p0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 166
    .local v3, "mon":I
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 167
    .local v6, "year":I
    const/16 v7, 0xb

    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 168
    .local v1, "hour":I
    const/16 v7, 0xc

    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 169
    .local v2, "min":I
    const/16 v7, 0xd

    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 171
    .local v5, "sec":I
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v7, 0x18

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 172
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    sget-object v7, Lcom/motorola/blur/util/mime/DateParser;->MONTHS:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    const/4 v7, 0x4

    invoke-static {v4, v6, v7}, Lcom/motorola/blur/util/mime/DateParser;->zeroPad(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    invoke-static {v4, v1, v8}, Lcom/motorola/blur/util/mime/DateParser;->zeroPad(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    invoke-static {v4, v2, v8}, Lcom/motorola/blur/util/mime/DateParser;->zeroPad(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    invoke-static {v4, v5, v8}, Lcom/motorola/blur/util/mime/DateParser;->zeroPad(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    const/4 v7, 0x0

    invoke-static {v4, p0, v7}, Lcom/motorola/blur/util/mime/DateParser;->appendTimeZone(Ljava/lang/StringBuilder;Ljava/util/Calendar;Z)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 182
    .end local v0    # "dayOfMonth":I
    .end local v1    # "hour":I
    .end local v2    # "min":I
    .end local v3    # "mon":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "sec":I
    .end local v6    # "year":I
    :goto_0
    return-object v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static formatLong(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 148
    if-eqz p0, :cond_0

    .line 149
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 150
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 151
    invoke-static {v0}, Lcom/motorola/blur/util/mime/DateParser;->formatLong(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .end local v0    # "cal":Ljava/util/Calendar;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static formatRFC822(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 13
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    const/16 v12, 0x3a

    const/4 v11, 0x2

    const/16 v10, 0x20

    .line 80
    if-eqz p0, :cond_0

    .line 81
    const/4 v8, 0x7

    invoke-virtual {p0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 82
    .local v1, "dayOfWeek":I
    const/4 v8, 0x5

    invoke-virtual {p0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 83
    .local v0, "dayOfMonth":I
    invoke-virtual {p0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 84
    .local v4, "mon":I
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 85
    .local v7, "year":I
    const/16 v8, 0xb

    invoke-virtual {p0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 86
    .local v2, "hour":I
    const/16 v8, 0xc

    invoke-virtual {p0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 87
    .local v3, "min":I
    const/16 v8, 0xd

    invoke-virtual {p0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 89
    .local v6, "sec":I
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v8, 0x21

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 90
    .local v5, "sb":Ljava/lang/StringBuilder;
    sget-object v8, Lcom/motorola/blur/util/mime/DateParser;->DAY_OF_WEEK:[Ljava/lang/String;

    add-int/lit8 v9, v1, -0x1

    aget-object v8, v8, v9

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    sget-object v8, Lcom/motorola/blur/util/mime/DateParser;->MONTHS:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    const/4 v8, 0x4

    invoke-static {v5, v7, v8}, Lcom/motorola/blur/util/mime/DateParser;->zeroPad(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    invoke-static {v5, v2, v11}, Lcom/motorola/blur/util/mime/DateParser;->zeroPad(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    invoke-static {v5, v3, v11}, Lcom/motorola/blur/util/mime/DateParser;->zeroPad(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    invoke-static {v5, v6, v11}, Lcom/motorola/blur/util/mime/DateParser;->zeroPad(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    const/4 v8, 0x0

    invoke-static {v5, p0, v8}, Lcom/motorola/blur/util/mime/DateParser;->appendTimeZone(Ljava/lang/StringBuilder;Ljava/util/Calendar;Z)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 101
    .end local v0    # "dayOfMonth":I
    .end local v1    # "dayOfWeek":I
    .end local v2    # "hour":I
    .end local v3    # "min":I
    .end local v4    # "mon":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "sec":I
    .end local v7    # "year":I
    :goto_0
    return-object v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static formatRFC822(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 65
    if-eqz p0, :cond_0

    .line 66
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 67
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 68
    invoke-static {v0}, Lcom/motorola/blur/util/mime/DateParser;->formatRFC822(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .end local v0    # "cal":Ljava/util/Calendar;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static formatShort(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 6
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    const/16 v5, 0x2d

    .line 126
    if-eqz p0, :cond_0

    .line 127
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 128
    .local v0, "dayOfMonth":I
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 129
    .local v1, "mon":I
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 131
    .local v3, "year":I
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x21

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 132
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    sget-object v4, Lcom/motorola/blur/util/mime/DateParser;->MONTHS:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Lcom/motorola/blur/util/mime/DateParser;->zeroPad(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 138
    .end local v0    # "dayOfMonth":I
    .end local v1    # "mon":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "year":I
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static formatShort(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 111
    if-eqz p0, :cond_0

    .line 112
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 113
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 114
    invoke-static {v0}, Lcom/motorola/blur/util/mime/DateParser;->formatShort(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .end local v0    # "cal":Ljava/util/Calendar;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getFullYear(I)I
    .locals 3
    .param p0, "ambiguousTwoDigitYear"    # I

    .prologue
    .line 266
    const/16 v2, 0x63

    if-gt p0, v2, :cond_0

    if-gez p0, :cond_2

    :cond_0
    move v1, p0

    .line 274
    :cond_1
    :goto_0
    return v1

    .line 269
    :cond_2
    sget v2, Lcom/motorola/blur/util/mime/DateParser;->CENTURY_START_YEAR:I

    div-int/lit8 v2, v2, 0x64

    mul-int/lit8 v0, v2, 0x64

    .line 270
    .local v0, "century":I
    add-int v1, v0, p0

    .line 271
    .local v1, "fullYear":I
    sget v2, Lcom/motorola/blur/util/mime/DateParser;->CENTURY_START_YEAR:I

    if-ge v1, v2, :cond_1

    .line 272
    add-int/lit8 v1, v1, 0x64

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 15
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 208
    sget-object v12, Lcom/motorola/blur/util/mime/DateParser;->PATTERN_DATE:Ljava/util/regex/Pattern;

    invoke-virtual {v12, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 209
    .local v4, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-nez v12, :cond_7

    .line 210
    sget-object v12, Lcom/motorola/blur/util/mime/DateParser;->PATTERN_DATE_FALLBACK:Ljava/util/regex/Pattern;

    invoke-virtual {v12, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 211
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-nez v12, :cond_0

    .line 212
    const/4 v12, 0x0

    .line 262
    :goto_0
    return-object v12

    .line 214
    :cond_0
    const/4 v12, 0x4

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "day":Ljava/lang/String;
    const/4 v12, 0x3

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 220
    .local v6, "mon":Ljava/lang/String;
    :goto_1
    const/4 v12, 0x5

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 221
    .local v11, "year":Ljava/lang/String;
    const/4 v12, 0x7

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "hour":Ljava/lang/String;
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, "min":Ljava/lang/String;
    const/16 v12, 0xa

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 224
    .local v8, "sec":Ljava/lang/String;
    const/16 v12, 0xb

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 226
    .local v10, "tz":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 227
    .local v3, "intYear":I
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    .line 228
    invoke-static {v3}, Lcom/motorola/blur/util/mime/DateParser;->getFullYear(I)I

    move-result v3

    .line 230
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_2

    .line 231
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    :cond_2
    if-nez v1, :cond_3

    .line 234
    const-string v1, "00"

    .line 236
    :cond_3
    if-nez v5, :cond_4

    .line 237
    const-string v5, "00"

    .line 239
    :cond_4
    if-nez v8, :cond_5

    .line 240
    const-string v8, "00"

    .line 242
    :cond_5
    if-nez v10, :cond_8

    .line 243
    const-string v10, "+00:00"

    .line 248
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v12, 0x21

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 249
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/4 v12, 0x4

    invoke-static {v7, v3, v12}, Lcom/motorola/blur/util/mime/DateParser;->zeroPad(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x2d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    sget-object v12, Lcom/motorola/blur/util/mime/DateParser;->MONTHS:[Ljava/lang/String;

    array-length v12, v12

    if-ge v2, v12, :cond_6

    .line 251
    sget-object v12, Lcom/motorola/blur/util/mime/DateParser;->MONTHS:[Ljava/lang/String;

    aget-object v12, v12, v2

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 252
    add-int/lit8 v12, v2, 0x1

    const/4 v13, 0x2

    invoke-static {v7, v12, v13}, Lcom/motorola/blur/util/mime/DateParser;->zeroPad(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 257
    :cond_6
    const/16 v12, 0x2d

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x54

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".000"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    new-instance v9, Landroid/text/format/Time;

    const-string v12, "UTC"

    invoke-direct {v9, v12}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 261
    .local v9, "time":Landroid/text/format/Time;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 262
    new-instance v12, Ljava/util/Date;

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v13

    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0

    .line 217
    .end local v0    # "day":Ljava/lang/String;
    .end local v1    # "hour":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "intYear":I
    .end local v5    # "min":Ljava/lang/String;
    .end local v6    # "mon":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "sec":Ljava/lang/String;
    .end local v9    # "time":Landroid/text/format/Time;
    .end local v10    # "tz":Ljava/lang/String;
    .end local v11    # "year":Ljava/lang/String;
    :cond_7
    const/4 v12, 0x3

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 218
    .restart local v0    # "day":Ljava/lang/String;
    const/4 v12, 0x4

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "mon":Ljava/lang/String;
    goto/16 :goto_1

    .line 245
    .restart local v1    # "hour":Ljava/lang/String;
    .restart local v3    # "intYear":I
    .restart local v5    # "min":Ljava/lang/String;
    .restart local v8    # "sec":Ljava/lang/String;
    .restart local v10    # "tz":Ljava/lang/String;
    .restart local v11    # "year":Ljava/lang/String;
    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x3

    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 250
    .restart local v2    # "i":I
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3
.end method

.method private static zeroPad(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "inValue"    # I
    .param p2, "inMinDigits"    # I

    .prologue
    .line 298
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "val":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v1, p2, v3

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 301
    const/16 v3, 0x30

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    return-object v3
.end method
