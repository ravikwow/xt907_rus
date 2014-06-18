.class public Lcom/android/contacts/util/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final DATE_FORMATS:[Ljava/text/SimpleDateFormat;

.field private static final DATE_FORMATS_WITHOUT_YEAR:[Ljava/text/SimpleDateFormat;

.field private static final FORMAT_WITHOUT_YEAR_DAY_FIRST:Ljava/text/DateFormat;

.field private static final FORMAT_WITHOUT_YEAR_MONTH_FIRST:Ljava/text/DateFormat;

.field public static final FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final NO_YEAR_DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final UTC_TIMEZONE:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 33
    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    sput-object v4, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    .line 36
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "--MM-dd"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v4, Lcom/android/contacts/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 43
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v4, Lcom/android/contacts/util/DateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 45
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v4, Lcom/android/contacts/util/DateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 47
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "--MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v4, Lcom/android/contacts/util/DateUtils;->NO_YEAR_DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 52
    const/4 v4, 0x7

    new-array v4, v4, [Ljava/text/SimpleDateFormat;

    sget-object v5, Lcom/android/contacts/util/DateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    aput-object v5, v4, v10

    sget-object v5, Lcom/android/contacts/util/DateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    aput-object v5, v4, v9

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd\'T\'HH:mm\'Z\'"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v5, v4, v11

    const/4 v5, 0x3

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd\'T\'HHmmssSSS\'Z\'"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd\'T\'HHmmss\'Z\'"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd\'T\'HHmm\'Z\'"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v6, v4, v5

    sput-object v4, Lcom/android/contacts/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    .line 63
    new-array v4, v11, [Ljava/text/SimpleDateFormat;

    sget-object v5, Lcom/android/contacts/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    aput-object v5, v4, v10

    sget-object v5, Lcom/android/contacts/util/DateUtils;->NO_YEAR_DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    aput-object v5, v4, v9

    sput-object v4, Lcom/android/contacts/util/DateUtils;->DATE_FORMATS_WITHOUT_YEAR:[Ljava/text/SimpleDateFormat;

    .line 69
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "MMMM dd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/android/contacts/util/DateUtils;->FORMAT_WITHOUT_YEAR_MONTH_FIRST:Ljava/text/DateFormat;

    .line 72
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "dd MMMM"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/android/contacts/util/DateUtils;->FORMAT_WITHOUT_YEAR_DAY_FIRST:Ljava/text/DateFormat;

    .line 76
    sget-object v0, Lcom/android/contacts/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    .local v0, "arr$":[Ljava/text/SimpleDateFormat;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 77
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v9}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 78
    sget-object v4, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "format":Ljava/text/SimpleDateFormat;
    :cond_0
    sget-object v4, Lcom/android/contacts/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    sget-object v5, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 81
    sget-object v4, Lcom/android/contacts/util/DateUtils;->FORMAT_WITHOUT_YEAR_MONTH_FIRST:Ljava/text/DateFormat;

    sget-object v5, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 82
    sget-object v4, Lcom/android/contacts/util/DateUtils;->FORMAT_WITHOUT_YEAR_DAY_FIRST:Ljava/text/DateFormat;

    sget-object v5, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 140
    if-nez p1, :cond_0

    .line 141
    const/4 v6, 0x0

    .line 186
    :goto_0
    return-object v6

    .line 144
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    move-object v6, p1

    .line 146
    goto :goto_0

    .line 149
    :cond_1
    new-instance v5, Ljava/text/ParsePosition;

    invoke-direct {v5, v6}, Ljava/text/ParsePosition;-><init>(I)V

    .line 155
    .local v5, "parsePosition":Ljava/text/ParsePosition;
    const-string v7, "--02-29"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 156
    const/16 v7, 0x1d

    invoke-static {v6, v3, v7}, Lcom/android/contacts/util/DateUtils;->getUtcDate(III)Ljava/util/Date;

    move-result-object v0

    .line 157
    .local v0, "date":Ljava/util/Date;
    const/4 v3, 0x1

    .line 165
    .local v3, "noYearParsed":Z
    :goto_1
    if-eqz v3, :cond_5

    .line 166
    invoke-static {p0}, Lcom/android/contacts/util/DateUtils;->isMonthBeforeDay(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v4, Lcom/android/contacts/util/DateUtils;->FORMAT_WITHOUT_YEAR_MONTH_FIRST:Ljava/text/DateFormat;

    .line 169
    .local v4, "outFormat":Ljava/text/DateFormat;
    :goto_2
    monitor-enter v4

    .line 170
    :try_start_0
    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    monitor-exit v4

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v6

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 159
    .end local v0    # "date":Ljava/util/Date;
    .end local v3    # "noYearParsed":Z
    .end local v4    # "outFormat":Ljava/text/DateFormat;
    :cond_2
    sget-object v7, Lcom/android/contacts/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v7

    .line 160
    :try_start_1
    sget-object v8, Lcom/android/contacts/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8, p1, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 161
    .restart local v0    # "date":Ljava/util/Date;
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 162
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_3

    .restart local v3    # "noYearParsed":Z
    :goto_3
    goto :goto_1

    .line 161
    .end local v0    # "date":Ljava/util/Date;
    .end local v3    # "noYearParsed":Z
    :catchall_1
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .restart local v0    # "date":Ljava/util/Date;
    :cond_3
    move v3, v6

    .line 162
    goto :goto_3

    .line 166
    .restart local v3    # "noYearParsed":Z
    :cond_4
    sget-object v4, Lcom/android/contacts/util/DateUtils;->FORMAT_WITHOUT_YEAR_DAY_FIRST:Ljava/text/DateFormat;

    goto :goto_2

    .line 174
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    sget-object v6, Lcom/android/contacts/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    array-length v6, v6

    if-ge v2, v6, :cond_7

    .line 175
    sget-object v6, Lcom/android/contacts/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    aget-object v1, v6, v2

    .line 176
    .local v1, "f":Ljava/text/SimpleDateFormat;
    monitor-enter v1

    .line 177
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v5, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 178
    invoke-virtual {v1, p1, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 179
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_6

    .line 180
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    .line 181
    .restart local v4    # "outFormat":Ljava/text/DateFormat;
    sget-object v6, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v4, v6}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 182
    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    monitor-exit v1

    goto :goto_0

    .line 184
    .end local v4    # "outFormat":Ljava/text/DateFormat;
    :catchall_2
    move-exception v6

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v6

    :cond_6
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v1    # "f":Ljava/text/SimpleDateFormat;
    :cond_7
    move-object v6, p1

    .line 186
    goto/16 :goto_0
.end method

.method private static final getUtcDate(III)Ljava/util/Date;
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .prologue
    .line 127
    sget-object v1, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 128
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    .line 129
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 130
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 131
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static isMonthBeforeDay(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 190
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v0

    .line 191
    .local v0, "dateFormatOrder":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 192
    aget-char v3, v0, v1

    const/16 v4, 0x64

    if-ne v3, v4, :cond_1

    .line 199
    :cond_0
    :goto_1
    return v2

    .line 195
    :cond_1
    aget-char v3, v0, v1

    const/16 v4, 0x4d

    if-ne v3, v4, :cond_2

    .line 196
    const/4 v2, 0x1

    goto :goto_1

    .line 191
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 90
    new-instance v3, Ljava/text/ParsePosition;

    invoke-direct {v3, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 91
    .local v3, "parsePosition":Ljava/text/ParsePosition;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/android/contacts/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 92
    sget-object v4, Lcom/android/contacts/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    aget-object v1, v4, v2

    .line 93
    .local v1, "f":Ljava/text/SimpleDateFormat;
    monitor-enter v1

    .line 94
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 95
    invoke-virtual {v1, p0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 96
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 97
    monitor-exit v1

    .line 101
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "f":Ljava/text/SimpleDateFormat;
    :goto_1
    return-object v0

    .line 99
    .restart local v0    # "date":Ljava/util/Date;
    .restart local v1    # "f":Ljava/text/SimpleDateFormat;
    :cond_0
    monitor-exit v1

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "date":Ljava/util/Date;
    :catchall_0
    move-exception v4

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 101
    .end local v1    # "f":Ljava/text/SimpleDateFormat;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static parseDateWithoutYear(Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 111
    new-instance v3, Ljava/text/ParsePosition;

    invoke-direct {v3, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 112
    .local v3, "parsePosition":Ljava/text/ParsePosition;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/android/contacts/util/DateUtils;->DATE_FORMATS_WITHOUT_YEAR:[Ljava/text/SimpleDateFormat;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 113
    sget-object v4, Lcom/android/contacts/util/DateUtils;->DATE_FORMATS_WITHOUT_YEAR:[Ljava/text/SimpleDateFormat;

    aget-object v1, v4, v2

    .line 114
    .local v1, "f":Ljava/text/SimpleDateFormat;
    monitor-enter v1

    .line 115
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 116
    invoke-virtual {v1, p0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 117
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 118
    monitor-exit v1

    .line 122
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "f":Ljava/text/SimpleDateFormat;
    :goto_1
    return-object v0

    .line 120
    .restart local v0    # "date":Ljava/util/Date;
    .restart local v1    # "f":Ljava/text/SimpleDateFormat;
    :cond_0
    monitor-exit v1

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "date":Ljava/util/Date;
    :catchall_0
    move-exception v4

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 122
    .end local v1    # "f":Ljava/text/SimpleDateFormat;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
