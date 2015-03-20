.class public Lcom/android/calendar/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/Utils$1;,
        Lcom/android/calendar/Utils$CalendarBroadcastReceiver;,
        Lcom/android/calendar/Utils$DNASegment;,
        Lcom/android/calendar/Utils$DNAStrand;
    }
.end annotation


# static fields
.field static CONFLICT_COLOR:I

.field static WORK_DAY_END_LENGTH:I

.field static WORK_DAY_END_MINUTES:I

.field static WORK_DAY_MINUTES:I

.field static WORK_DAY_START_MINUTES:I

.field private static mAllowWeekForDetailView:Z

.field static mMinutesLoaded:Z

.field private static final mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

.field private static mTardis:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    const/16 v0, 0x348

    sput v0, Lcom/android/calendar/Utils;->WORK_DAY_MINUTES:I

    .line 119
    const/16 v0, 0x168

    sput v0, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    .line 120
    const/16 v0, 0x4b0

    sput v0, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    .line 121
    sget v0, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    rsub-int v0, v0, 0x5a0

    sput v0, Lcom/android/calendar/Utils;->WORK_DAY_END_LENGTH:I

    .line 122
    const/high16 v0, -0x1000000

    sput v0, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    .line 123
    sput-boolean v2, Lcom/android/calendar/Utils;->mMinutesLoaded:Z

    .line 137
    new-instance v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    const-string v1, "com.android.calendar_preferences"

    invoke-direct {v0, v1}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    .line 138
    sput-boolean v2, Lcom/android/calendar/Utils;->mAllowWeekForDetailView:Z

    .line 139
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/calendar/Utils;->mTardis:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1601
    return-void
.end method

.method private static addAllDayToStrands(Lcom/android/calendar/Event;Ljava/util/HashMap;II)V
    .locals 5
    .param p0, "event"    # Lcom/android/calendar/Event;
    .param p2, "firstJulianDay"    # I
    .param p3, "numDays"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/Event;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/Utils$DNAStrand;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 937
    .local p1, "strands":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/calendar/Utils$DNAStrand;>;"
    sget v3, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    invoke-static {p1, v3}, Lcom/android/calendar/Utils;->getOrCreateStrand(Ljava/util/HashMap;I)Lcom/android/calendar/Utils$DNAStrand;

    move-result-object v2

    .line 939
    .local v2, "strand":Lcom/android/calendar/Utils$DNAStrand;
    iget-object v3, v2, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    if-nez v3, :cond_0

    .line 940
    new-array v3, p3, [I

    iput-object v3, v2, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    .line 944
    :cond_0
    iget v3, p0, Lcom/android/calendar/Event;->endDay:I

    sub-int/2addr v3, p2

    add-int/lit8 v4, p3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 945
    .local v0, "end":I
    iget v3, p0, Lcom/android/calendar/Event;->startDay:I

    sub-int/2addr v3, p2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_2

    .line 946
    iget-object v3, v2, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    aget v3, v3, v1

    if-eqz v3, :cond_1

    .line 948
    iget-object v3, v2, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    sget v4, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    aput v4, v3, v1

    .line 945
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 951
    :cond_1
    iget-object v3, v2, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    iget v4, p0, Lcom/android/calendar/Event;->color:I

    aput v4, v3, v1

    goto :goto_1

    .line 954
    :cond_2
    return-void
.end method

.method private static addNewSegment(Ljava/util/LinkedList;Lcom/android/calendar/Event;Ljava/util/HashMap;III)V
    .locals 11
    .param p1, "event"    # Lcom/android/calendar/Event;
    .param p3, "firstJulianDay"    # I
    .param p4, "minStart"    # I
    .param p5, "minMinutes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/calendar/Utils$DNASegment;",
            ">;",
            "Lcom/android/calendar/Event;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/Utils$DNAStrand;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 1024
    .local p0, "segments":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/calendar/Utils$DNASegment;>;"
    .local p2, "strands":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/calendar/Utils$DNAStrand;>;"
    iget v0, p1, Lcom/android/calendar/Event;->startDay:I

    iget v2, p1, Lcom/android/calendar/Event;->endDay:I

    if-le v0, v2, :cond_0

    .line 1025
    const-string v0, "CalUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event starts after it ends: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_0
    iget v0, p1, Lcom/android/calendar/Event;->startDay:I

    iget v2, p1, Lcom/android/calendar/Event;->endDay:I

    if-eq v0, v2, :cond_2

    .line 1029
    new-instance v1, Lcom/android/calendar/Event;

    invoke-direct {v1}, Lcom/android/calendar/Event;-><init>()V

    .line 1030
    .local v1, "lhs":Lcom/android/calendar/Event;
    iget v0, p1, Lcom/android/calendar/Event;->color:I

    iput v0, v1, Lcom/android/calendar/Event;->color:I

    .line 1031
    iget v0, p1, Lcom/android/calendar/Event;->startDay:I

    iput v0, v1, Lcom/android/calendar/Event;->startDay:I

    .line 1033
    iget v0, p1, Lcom/android/calendar/Event;->startTime:I

    iput v0, v1, Lcom/android/calendar/Event;->startTime:I

    .line 1034
    iget v0, v1, Lcom/android/calendar/Event;->startDay:I

    iput v0, v1, Lcom/android/calendar/Event;->endDay:I

    .line 1035
    const/16 v0, 0x59f

    iput v0, v1, Lcom/android/calendar/Event;->endTime:I

    .line 1037
    :goto_0
    iget v0, v1, Lcom/android/calendar/Event;->startDay:I

    iget v2, p1, Lcom/android/calendar/Event;->endDay:I

    if-eq v0, v2, :cond_1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    .line 1038
    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->addNewSegment(Ljava/util/LinkedList;Lcom/android/calendar/Event;Ljava/util/HashMap;III)V

    .line 1041
    iget v0, v1, Lcom/android/calendar/Event;->startDay:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/android/calendar/Event;->startDay:I

    .line 1042
    iget v0, v1, Lcom/android/calendar/Event;->startDay:I

    iput v0, v1, Lcom/android/calendar/Event;->endDay:I

    .line 1043
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/calendar/Event;->startTime:I

    .line 1044
    const/4 p4, 0x0

    goto :goto_0

    .line 1047
    :cond_1
    iget v0, p1, Lcom/android/calendar/Event;->endTime:I

    iput v0, v1, Lcom/android/calendar/Event;->endTime:I

    .line 1048
    move-object p1, v1

    .line 1051
    .end local v1    # "lhs":Lcom/android/calendar/Event;
    :cond_2
    new-instance v9, Lcom/android/calendar/Utils$DNASegment;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Lcom/android/calendar/Utils$DNASegment;-><init>(Lcom/android/calendar/Utils$1;)V

    .line 1052
    .local v9, "segment":Lcom/android/calendar/Utils$DNASegment;
    iget v0, p1, Lcom/android/calendar/Event;->startDay:I

    sub-int/2addr v0, p3

    mul-int/lit16 v6, v0, 0x5a0

    .line 1053
    .local v6, "dayOffset":I
    add-int/lit16 v0, v6, 0x5a0

    add-int/lit8 v7, v0, -0x1

    .line 1055
    .local v7, "endOfDay":I
    iget v0, p1, Lcom/android/calendar/Event;->startTime:I

    add-int/2addr v0, v6

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v9, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    .line 1058
    iget v0, v9, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    add-int v0, v0, p5

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1059
    .local v8, "minEnd":I
    iget v0, p1, Lcom/android/calendar/Event;->endTime:I

    add-int/2addr v0, v6

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v9, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    .line 1060
    iget v0, v9, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    if-le v0, v7, :cond_3

    .line 1061
    iput v7, v9, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    .line 1064
    :cond_3
    iget v0, p1, Lcom/android/calendar/Event;->color:I

    iput v0, v9, Lcom/android/calendar/Utils$DNASegment;->color:I

    .line 1065
    iget v0, p1, Lcom/android/calendar/Event;->startDay:I

    iput v0, v9, Lcom/android/calendar/Utils$DNASegment;->day:I

    .line 1066
    invoke-virtual {p0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1069
    iget v0, v9, Lcom/android/calendar/Utils$DNASegment;->color:I

    invoke-static {p2, v0}, Lcom/android/calendar/Utils;->getOrCreateStrand(Ljava/util/HashMap;I)Lcom/android/calendar/Utils$DNAStrand;

    move-result-object v10

    .line 1070
    .local v10, "strand":Lcom/android/calendar/Utils$DNAStrand;
    iget v0, v10, Lcom/android/calendar/Utils$DNAStrand;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v10, Lcom/android/calendar/Utils$DNAStrand;->count:I

    .line 1071
    return-void
.end method

.method public static allowEditEventsWithAttendees(Landroid/content/Context;)Z
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 1668
    invoke-static {}, Lcom/motorola/calendar/utils/CalConfig;->isCalendarWorkaroundEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkForDuplicateNames(Ljava/util/Map;Landroid/database/Cursor;I)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "nameIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/database/Cursor;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 612
    .local p0, "isDuplicateName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 613
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 614
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 615
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, "displayName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 618
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 621
    .end local v0    # "displayName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static clearTimeChangesReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "r"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 1635
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1636
    return-void
.end method

.method public static compareCursors(Landroid/database/Cursor;Landroid/database/Cursor;)Z
    .locals 6
    .param p0, "c1"    # Landroid/database/Cursor;
    .param p1, "c2"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 354
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 377
    :cond_0
    :goto_0
    return v2

    .line 358
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    .line 359
    .local v1, "numColumns":I
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 363
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 367
    invoke-interface {p0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 368
    invoke-interface {p1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 369
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 370
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 371
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 377
    .end local v0    # "i":I
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static convertAlldayLocalToUTC(Landroid/text/format/Time;JLjava/lang/String;)J
    .locals 2
    .param p0, "recycle"    # Landroid/text/format/Time;
    .param p1, "localTime"    # J
    .param p3, "tz"    # Ljava/lang/String;

    .prologue
    .line 572
    if-nez p0, :cond_0

    .line 573
    new-instance p0, Landroid/text/format/Time;

    .end local p0    # "recycle":Landroid/text/format/Time;
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 575
    .restart local p0    # "recycle":Landroid/text/format/Time;
    :cond_0
    iput-object p3, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 576
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 577
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 578
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J
    .locals 2
    .param p0, "recycle"    # Landroid/text/format/Time;
    .param p1, "utcTime"    # J
    .param p3, "tz"    # Ljava/lang/String;

    .prologue
    .line 562
    if-nez p0, :cond_0

    .line 563
    new-instance p0, Landroid/text/format/Time;

    .end local p0    # "recycle":Landroid/text/format/Time;
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 565
    .restart local p0    # "recycle":Landroid/text/format/Time;
    :cond_0
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 566
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 567
    iput-object p3, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 568
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static createDNAStrands(ILjava/util/ArrayList;III[ILandroid/content/Context;)Ljava/util/HashMap;
    .locals 28
    .param p0, "firstJulianDay"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "minPixels"    # I
    .param p5, "dayXs"    # [I
    .param p6, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;III[I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/Utils$DNAStrand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 721
    .local p1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    sget-boolean v5, Lcom/android/calendar/Utils;->mMinutesLoaded:Z

    if-nez v5, :cond_1

    .line 722
    if-nez p6, :cond_0

    .line 723
    const-string v5, "CalUtils"

    const-string v6, "No context and haven\'t loaded parameters yet! Can\'t create DNA."

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_0
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 726
    .local v25, "res":Landroid/content/res/Resources;
    const v5, 0x7f080029

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    sput v5, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    .line 727
    const v5, 0x7f0b0008

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    .line 728
    const v5, 0x7f0b0009

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    .line 729
    sget v5, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    rsub-int v5, v5, 0x5a0

    sput v5, Lcom/android/calendar/Utils;->WORK_DAY_END_LENGTH:I

    .line 730
    sget v5, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    sget v6, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    sub-int/2addr v5, v6

    sput v5, Lcom/android/calendar/Utils;->WORK_DAY_MINUTES:I

    .line 731
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/calendar/Utils;->mMinutesLoaded:Z

    .line 734
    .end local v25    # "res":Landroid/content/res/Resources;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    array-length v5, v0

    const/4 v6, 0x1

    if-lt v5, v6, :cond_2

    sub-int v5, p3, p2

    const/16 v6, 0x8

    if-lt v5, v6, :cond_2

    if-gez p4, :cond_3

    .line 736
    :cond_2
    const-string v5, "CalUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad values for createDNAStrands! events:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " dayXs:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p5 .. p5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " bot-top:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-int v8, p3, p2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " minPixels:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const/4 v4, 0x0

    .line 931
    :goto_0
    return-object v4

    .line 743
    :cond_3
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 744
    .local v2, "segments":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/calendar/Utils$DNASegment;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 747
    .local v4, "strands":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/calendar/Utils$DNAStrand;>;"
    new-instance v14, Lcom/android/calendar/Utils$DNAStrand;

    invoke-direct {v14}, Lcom/android/calendar/Utils$DNAStrand;-><init>()V

    .line 748
    .local v14, "blackStrand":Lcom/android/calendar/Utils$DNAStrand;
    sget v5, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    iput v5, v14, Lcom/android/calendar/Utils$DNAStrand;->color:I

    .line 749
    sget v5, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    mul-int/lit8 v5, p4, 0x4

    sget v6, Lcom/android/calendar/Utils;->WORK_DAY_MINUTES:I

    mul-int/2addr v5, v6

    sub-int v6, p3, p2

    mul-int/lit8 v6, v6, 0x3

    div-int v7, v5, v6

    .line 758
    .local v7, "minMinutes":I
    mul-int/lit8 v5, v7, 0x5

    div-int/lit8 v24, v5, 0x2

    .line 759
    .local v24, "minOtherMinutes":I
    move-object/from16 v0, p5

    array-length v5, v0

    add-int v5, v5, p0

    add-int/lit8 v21, v5, -0x1

    .line 761
    .local v21, "lastJulianDay":I
    new-instance v3, Lcom/android/calendar/Event;

    invoke-direct {v3}, Lcom/android/calendar/Event;-><init>()V

    .line 763
    .local v3, "event":Lcom/android/calendar/Event;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/calendar/Event;

    .line 765
    .local v15, "currEvent":Lcom/android/calendar/Event;
    iget v5, v15, Lcom/android/calendar/Event;->endDay:I

    move/from16 v0, p0

    if-lt v5, v0, :cond_4

    iget v5, v15, Lcom/android/calendar/Event;->startDay:I

    move/from16 v0, v21

    if-gt v5, v0, :cond_4

    .line 768
    invoke-virtual {v15}, Lcom/android/calendar/Event;->drawAsAllday()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 769
    move-object/from16 v0, p5

    array-length v5, v0

    move/from16 v0, p0

    invoke-static {v15, v4, v0, v5}, Lcom/android/calendar/Utils;->addAllDayToStrands(Lcom/android/calendar/Event;Ljava/util/HashMap;II)V

    goto :goto_1

    .line 773
    :cond_5
    invoke-virtual {v15, v3}, Lcom/android/calendar/Event;->copyTo(Lcom/android/calendar/Event;)V

    .line 774
    iget v5, v3, Lcom/android/calendar/Event;->startDay:I

    move/from16 v0, p0

    if-ge v5, v0, :cond_6

    .line 775
    move/from16 v0, p0

    iput v0, v3, Lcom/android/calendar/Event;->startDay:I

    .line 776
    const/4 v5, 0x0

    iput v5, v3, Lcom/android/calendar/Event;->startTime:I

    .line 780
    :cond_6
    iget v5, v3, Lcom/android/calendar/Event;->startTime:I

    move/from16 v0, v24

    rsub-int v6, v0, 0x5a0

    if-le v5, v6, :cond_7

    .line 781
    move/from16 v0, v24

    rsub-int v5, v0, 0x5a0

    iput v5, v3, Lcom/android/calendar/Event;->startTime:I

    .line 783
    :cond_7
    iget v5, v3, Lcom/android/calendar/Event;->endDay:I

    move/from16 v0, v21

    if-le v5, v0, :cond_8

    .line 784
    move/from16 v0, v21

    iput v0, v3, Lcom/android/calendar/Event;->endDay:I

    .line 785
    const/16 v5, 0x59f

    iput v5, v3, Lcom/android/calendar/Event;->endTime:I

    .line 789
    :cond_8
    iget v5, v3, Lcom/android/calendar/Event;->endTime:I

    move/from16 v0, v24

    if-ge v5, v0, :cond_9

    .line 790
    move/from16 v0, v24

    iput v0, v3, Lcom/android/calendar/Event;->endTime:I

    .line 796
    :cond_9
    iget v5, v3, Lcom/android/calendar/Event;->startDay:I

    iget v6, v3, Lcom/android/calendar/Event;->endDay:I

    if-ne v5, v6, :cond_a

    iget v5, v3, Lcom/android/calendar/Event;->endTime:I

    iget v6, v3, Lcom/android/calendar/Event;->startTime:I

    sub-int/2addr v5, v6

    move/from16 v0, v24

    if-ge v5, v0, :cond_a

    .line 800
    iget v5, v3, Lcom/android/calendar/Event;->startTime:I

    sget v6, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    if-ge v5, v6, :cond_b

    .line 803
    iget v5, v3, Lcom/android/calendar/Event;->startTime:I

    add-int v5, v5, v24

    sget v6, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v3, Lcom/android/calendar/Event;->endTime:I

    .line 817
    :cond_a
    :goto_2
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_c

    .line 818
    const/4 v6, 0x0

    move/from16 v5, p0

    invoke-static/range {v2 .. v7}, Lcom/android/calendar/Utils;->addNewSegment(Ljava/util/LinkedList;Lcom/android/calendar/Event;Ljava/util/HashMap;III)V

    goto/16 :goto_1

    .line 806
    :cond_b
    iget v5, v3, Lcom/android/calendar/Event;->endTime:I

    sget v6, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    if-le v5, v6, :cond_a

    .line 808
    iget v5, v3, Lcom/android/calendar/Event;->endTime:I

    add-int v5, v5, v24

    const/16 v6, 0x59f

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v3, Lcom/android/calendar/Event;->endTime:I

    .line 810
    iget v5, v3, Lcom/android/calendar/Event;->endTime:I

    iget v6, v3, Lcom/android/calendar/Event;->startTime:I

    sub-int/2addr v5, v6

    move/from16 v0, v24

    if-ge v5, v0, :cond_a

    .line 811
    iget v5, v3, Lcom/android/calendar/Event;->endTime:I

    sub-int v5, v5, v24

    iput v5, v3, Lcom/android/calendar/Event;->startTime:I

    goto :goto_2

    .line 823
    :cond_c
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/calendar/Utils$DNASegment;

    .line 824
    .local v22, "lastSegment":Lcom/android/calendar/Utils$DNASegment;
    iget v5, v3, Lcom/android/calendar/Event;->startDay:I

    sub-int v5, v5, p0

    mul-int/lit16 v5, v5, 0x5a0

    iget v6, v3, Lcom/android/calendar/Event;->startTime:I

    add-int v27, v5, v6

    .line 825
    .local v27, "startMinute":I
    iget v5, v3, Lcom/android/calendar/Event;->endDay:I

    sub-int v5, v5, p0

    mul-int/lit16 v5, v5, 0x5a0

    iget v6, v3, Lcom/android/calendar/Event;->endTime:I

    add-int/2addr v5, v6

    add-int v6, v27, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 828
    .local v17, "endMinute":I
    if-gez v27, :cond_d

    .line 829
    const/16 v27, 0x0

    .line 831
    :cond_d
    const/16 v5, 0x2760

    move/from16 v0, v17

    if-lt v0, v5, :cond_e

    .line 832
    const/16 v17, 0x275f

    .line 837
    :cond_e
    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    move/from16 v0, v27

    if-ge v0, v5, :cond_16

    .line 838
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v18

    .line 840
    .local v18, "i":I
    :cond_f
    add-int/lit8 v18, v18, -0x1

    if-ltz v18, :cond_10

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Utils$DNASegment;

    iget v5, v5, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    move/from16 v0, v17

    if-lt v0, v5, :cond_f

    :cond_10
    move/from16 v19, v18

    .line 844
    .end local v18    # "i":I
    .local v19, "i":I
    :goto_3
    if-ltz v19, :cond_16

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/calendar/Utils$DNASegment;

    .local v16, "currSegment":Lcom/android/calendar/Utils$DNASegment;
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    move/from16 v0, v27

    if-gt v0, v5, :cond_16

    .line 846
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    sget v6, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    if-ne v5, v6, :cond_12

    move/from16 v18, v19

    .line 844
    .end local v19    # "i":I
    .restart local v18    # "i":I
    :cond_11
    :goto_4
    add-int/lit8 v18, v18, -0x1

    move/from16 v19, v18

    .end local v18    # "i":I
    .restart local v19    # "i":I
    goto :goto_3

    .line 851
    :cond_12
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    sub-int/2addr v5, v7

    move/from16 v0, v17

    if-ge v0, v5, :cond_13

    .line 852
    new-instance v26, Lcom/android/calendar/Utils$DNASegment;

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Lcom/android/calendar/Utils$DNASegment;-><init>(Lcom/android/calendar/Utils$1;)V

    .line 853
    .local v26, "rhs":Lcom/android/calendar/Utils$DNASegment;
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    move-object/from16 v0, v26

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    .line 854
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    move-object/from16 v0, v26

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    .line 855
    add-int/lit8 v5, v17, 0x1

    move-object/from16 v0, v26

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    .line 856
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    move-object/from16 v0, v26

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    .line 857
    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    .line 858
    add-int/lit8 v5, v19, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v2, v5, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 859
    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Utils$DNAStrand;

    iget v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    .line 867
    .end local v26    # "rhs":Lcom/android/calendar/Utils$DNASegment;
    :cond_13
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    add-int/2addr v5, v7

    move/from16 v0, v27

    if-le v0, v5, :cond_18

    .line 868
    new-instance v23, Lcom/android/calendar/Utils$DNASegment;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Lcom/android/calendar/Utils$DNASegment;-><init>(Lcom/android/calendar/Utils$1;)V

    .line 869
    .local v23, "lhs":Lcom/android/calendar/Utils$DNASegment;
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    move-object/from16 v0, v23

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    .line 870
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    move-object/from16 v0, v23

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    .line 871
    add-int/lit8 v5, v27, -0x1

    move-object/from16 v0, v23

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    .line 872
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    move-object/from16 v0, v23

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    .line 873
    move/from16 v0, v27

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    .line 877
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "i":I
    .restart local v18    # "i":I
    move/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 878
    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Utils$DNAStrand;

    iget v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    .line 886
    .end local v23    # "lhs":Lcom/android/calendar/Utils$DNASegment;
    :goto_5
    add-int/lit8 v5, v18, 0x1

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v5, v6, :cond_14

    .line 887
    add-int/lit8 v5, v18, 0x1

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/calendar/Utils$DNASegment;

    .line 888
    .restart local v26    # "rhs":Lcom/android/calendar/Utils$DNASegment;
    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    sget v6, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    if-ne v5, v6, :cond_14

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    move-object/from16 v0, v26

    iget v6, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    if-ne v5, v6, :cond_14

    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    add-int/lit8 v6, v6, 0x1

    if-gt v5, v6, :cond_14

    .line 890
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    move-object/from16 v0, v26

    iget v6, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, v26

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    .line 891
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 892
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Utils$DNAStrand;

    iget v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    .line 894
    move-object/from16 v16, v26

    .line 899
    .end local v26    # "rhs":Lcom/android/calendar/Utils$DNASegment;
    :cond_14
    add-int/lit8 v5, v18, -0x1

    if-ltz v5, :cond_15

    .line 900
    add-int/lit8 v5, v18, -0x1

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/calendar/Utils$DNASegment;

    .line 901
    .restart local v23    # "lhs":Lcom/android/calendar/Utils$DNASegment;
    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    sget v6, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    if-ne v5, v6, :cond_15

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    move-object/from16 v0, v23

    iget v6, v0, Lcom/android/calendar/Utils$DNASegment;->day:I

    if-ne v5, v6, :cond_15

    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_15

    .line 903
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    move-object/from16 v0, v23

    iget v6, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, v23

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    .line 904
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 905
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Utils$DNAStrand;

    iget v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    .line 907
    move-object/from16 v16, v23

    .line 910
    add-int/lit8 v18, v18, -0x1

    .line 916
    .end local v23    # "lhs":Lcom/android/calendar/Utils$DNASegment;
    :cond_15
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    sget v6, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    if-eq v5, v6, :cond_11

    .line 917
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Utils$DNAStrand;

    iget v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    .line 918
    sget v5, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    move-object/from16 v0, v16

    iput v5, v0, Lcom/android/calendar/Utils$DNASegment;->color:I

    .line 919
    sget v5, Lcom/android/calendar/Utils;->CONFLICT_COLOR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Utils$DNAStrand;

    iget v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/calendar/Utils$DNAStrand;->count:I

    goto/16 :goto_4

    .line 925
    .end local v16    # "currSegment":Lcom/android/calendar/Utils$DNASegment;
    .end local v18    # "i":I
    :cond_16
    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    move/from16 v0, v17

    if-le v0, v5, :cond_4

    .line 926
    move-object/from16 v0, v22

    iget v6, v0, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    move/from16 v5, p0

    invoke-static/range {v2 .. v7}, Lcom/android/calendar/Utils;->addNewSegment(Ljava/util/LinkedList;Lcom/android/calendar/Event;Ljava/util/HashMap;III)V

    goto/16 :goto_1

    .end local v15    # "currEvent":Lcom/android/calendar/Event;
    .end local v17    # "endMinute":I
    .end local v22    # "lastSegment":Lcom/android/calendar/Utils$DNASegment;
    .end local v27    # "startMinute":I
    :cond_17
    move-object v8, v2

    move/from16 v9, p0

    move-object v10, v4

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p5

    .line 930
    invoke-static/range {v8 .. v13}, Lcom/android/calendar/Utils;->weaveDNAStrands(Ljava/util/LinkedList;ILjava/util/HashMap;II[I)V

    goto/16 :goto_0

    .restart local v15    # "currEvent":Lcom/android/calendar/Event;
    .restart local v16    # "currSegment":Lcom/android/calendar/Utils$DNASegment;
    .restart local v17    # "endMinute":I
    .restart local v19    # "i":I
    .restart local v22    # "lastSegment":Lcom/android/calendar/Utils$DNASegment;
    .restart local v27    # "startMinute":I
    :cond_18
    move/from16 v18, v19

    .end local v19    # "i":I
    .restart local v18    # "i":I
    goto/16 :goto_5
.end method

.method public static createEmailAttendeesIntent(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 1487
    .line 1489
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1490
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 1493
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both toEmails and ccEmails are empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object p3, p4

    move-object p4, v0

    .line 1504
    :cond_1
    if-eqz p1, :cond_7

    .line 1505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c0045

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1513
    :goto_0
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 1514
    const-string v0, "mailto"

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1519
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 1520
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 1523
    const-string v4, "to"

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1520
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1528
    :cond_2
    if-eqz v1, :cond_3

    .line 1529
    const-string v0, "subject"

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1533
    :cond_3
    if-eqz p2, :cond_4

    .line 1534
    const-string v0, "body"

    invoke-virtual {v3, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1538
    :cond_4
    if-eqz p4, :cond_5

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1539
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1540
    const-string v2, "cc"

    invoke-virtual {v3, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    .line 1546
    :cond_5
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1547
    const-string v1, "mailto:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1549
    const/4 v2, 0x7

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1555
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1556
    const-string v0, "fromAccountString"

    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1557
    const v0, 0x7f0c0044

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_7
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .prologue
    .line 631
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .param p5, "flags"    # I

    .prologue
    .line 230
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatMonthYear(Landroid/content/Context;Landroid/text/format/Time;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    .line 414
    const/16 v5, 0x34

    .line 416
    .local v5, "flags":I
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .local v1, "millis":J
    move-object v0, p0

    move-wide v3, v1

    .line 417
    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAllowWeekForDetailView()Z
    .locals 1

    .prologue
    .line 639
    sget-boolean v0, Lcom/android/calendar/Utils;->mAllowWeekForDetailView:Z

    return v0
.end method

.method public static getConfigBool(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "key"    # I

    .prologue
    .line 643
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static getDayOfWeekString(IIJLandroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "julianDay"    # I
    .param p1, "todayJulianDay"    # I
    .param p2, "millis"    # J
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 1152
    const/4 v0, 0x0

    invoke-static {p4, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    .line 1153
    const/4 v6, 0x2

    .line 1155
    .local v6, "flags":I
    if-ne p0, p1, :cond_0

    .line 1156
    const v8, 0x7f0c004f

    new-array v9, v1, [Ljava/lang/Object;

    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    move-object v1, p4

    move-wide v2, p2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-virtual {p4, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1167
    .local v7, "dayViewText":Ljava/lang/String;
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 1168
    return-object v7

    .line 1158
    .end local v7    # "dayViewText":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, p1, -0x1

    if-ne p0, v0, :cond_1

    .line 1159
    const v8, 0x7f0c0050

    new-array v9, v1, [Ljava/lang/Object;

    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    move-object v1, p4

    move-wide v2, p2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-virtual {p4, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "dayViewText":Ljava/lang/String;
    goto :goto_0

    .line 1161
    .end local v7    # "dayViewText":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, p1, 0x1

    if-ne p0, v0, :cond_2

    .line 1162
    const v8, 0x7f0c0051

    new-array v9, v1, [Ljava/lang/Object;

    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    move-object v1, p4

    move-wide v2, p2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-virtual {p4, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "dayViewText":Ljava/lang/String;
    goto :goto_0

    .line 1165
    .end local v7    # "dayViewText":Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    move-object v1, p4

    move-wide v2, p2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "dayViewText":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getDaysPerWeek(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 523
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 524
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "preferences_days_per_week"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getDeclinedColorFromColor(I)I
    .locals 10
    .param p0, "color"    # I

    .prologue
    const/high16 v9, 0xff0000

    const v8, 0xff00

    const/high16 v7, -0x1000000

    .line 659
    const/4 v2, -0x1

    .line 660
    .local v2, "bg":I
    const/16 v0, 0x66

    .line 661
    .local v0, "a":I
    and-int v5, p0, v9

    mul-int/2addr v5, v0

    const/high16 v6, -0x67990000

    add-int/2addr v5, v6

    and-int v4, v5, v7

    .line 662
    .local v4, "r":I
    and-int v5, p0, v8

    mul-int/2addr v5, v0

    const v6, 0x986700

    add-int/2addr v5, v6

    and-int v3, v5, v9

    .line 663
    .local v3, "g":I
    and-int/lit16 v5, p0, 0xff

    mul-int/2addr v5, v0

    const v6, 0x9867

    add-int/2addr v5, v6

    and-int v1, v5, v8

    .line 664
    .local v1, "b":I
    or-int v5, v4, v3

    or-int/2addr v5, v1

    shr-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v7

    return v5
.end method

.method public static getDisplayColorFromColor(I)I
    .locals 5
    .param p0, "color"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 649
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 650
    .local v0, "hsv":[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 651
    aget v1, v0, v3

    const v2, 0x3fa66666

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v0, v3

    .line 652
    aget v1, v0, v4

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    aput v1, v0, v4

    .line 653
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    return v1
.end method

.method public static getDisplayedDatetime(JJJLjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;
    .locals 24
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J
    .param p4, "currentMillis"    # J
    .param p6, "localTimezone"    # Ljava/lang/String;
    .param p7, "allDay"    # Z
    .param p8, "context"    # Landroid/content/Context;

    .prologue
    .line 1200
    const/16 v19, 0x12

    .line 1201
    .local v19, "flagsDate":I
    const/16 v20, 0x1

    .line 1202
    .local v20, "flagsTime":I
    invoke-static/range {p8 .. p8}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1203
    move/from16 v0, v20

    or-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    .line 1206
    :cond_0
    new-instance v16, Landroid/text/format/Time;

    move-object/from16 v0, v16

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1207
    .local v16, "currentTime":Landroid/text/format/Time;
    move-object/from16 v0, v16

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1208
    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 1209
    .local v21, "resources":Landroid/content/res/Resources;
    const/16 v18, 0x0

    .line 1210
    .local v18, "datetimeString":Ljava/lang/String;
    if-eqz p7, :cond_4

    .line 1212
    const/4 v7, 0x0

    move-wide/from16 v0, p0

    move-object/from16 v2, p6

    invoke-static {v7, v0, v1, v2}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v3

    .line 1213
    .local v3, "localStartMillis":J
    const/4 v7, 0x0

    move-wide/from16 v0, p2

    move-object/from16 v2, p6

    invoke-static {v7, v0, v1, v2}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v5

    .line 1214
    .local v5, "localEndMillis":J
    move-object/from16 v0, v16

    iget-wide v7, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static/range {v3 .. v8}, Lcom/android/calendar/Utils;->singleDayEvent(JJJ)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1216
    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v16

    iget-wide v12, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide v8, v3

    move-wide/from16 v10, p4

    invoke-static/range {v7 .. v13}, Lcom/android/calendar/Utils;->isTodayOrTomorrow(Landroid/content/res/Resources;JJJ)I

    move-result v23

    .line 1218
    .local v23, "todayOrTomorrow":I
    const/4 v7, 0x1

    move/from16 v0, v23

    if-ne v7, v0, :cond_3

    .line 1219
    const v7, 0x7f0c0006

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1224
    .end local v23    # "todayOrTomorrow":I
    :cond_1
    :goto_0
    if-nez v18, :cond_2

    .line 1227
    new-instance v8, Ljava/util/Formatter;

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v9, 0x32

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 1228
    .local v8, "f":Ljava/util/Formatter;
    const-string v14, "UTC"

    move-object/from16 v7, p8

    move-wide/from16 v9, p0

    move-wide/from16 v11, p2

    move/from16 v13, v19

    invoke-static/range {v7 .. v14}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1264
    .end local v3    # "localStartMillis":J
    .end local v5    # "localEndMillis":J
    .end local v8    # "f":Ljava/util/Formatter;
    :cond_2
    :goto_1
    return-object v18

    .line 1220
    .restart local v3    # "localStartMillis":J
    .restart local v5    # "localEndMillis":J
    .restart local v23    # "todayOrTomorrow":I
    :cond_3
    const/4 v7, 0x2

    move/from16 v0, v23

    if-ne v7, v0, :cond_1

    .line 1221
    const v7, 0x7f0c0007

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto :goto_0

    .line 1232
    .end local v3    # "localStartMillis":J
    .end local v5    # "localEndMillis":J
    .end local v23    # "todayOrTomorrow":I
    :cond_4
    move-object/from16 v0, v16

    iget-wide v13, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v9, p0

    move-wide/from16 v11, p2

    invoke-static/range {v9 .. v14}, Lcom/android/calendar/Utils;->singleDayEvent(JJJ)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object/from16 v9, p8

    move-wide/from16 v10, p0

    move-wide/from16 v12, p2

    move/from16 v14, v20

    .line 1234
    invoke-static/range {v9 .. v14}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v22

    .line 1238
    .local v22, "timeString":Ljava/lang/String;
    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move-object/from16 v0, v16

    iget-wide v14, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v10, p0

    move-wide/from16 v12, p4

    invoke-static/range {v9 .. v15}, Lcom/android/calendar/Utils;->isTodayOrTomorrow(Landroid/content/res/Resources;JJJ)I

    move-result v23

    .line 1240
    .restart local v23    # "todayOrTomorrow":I
    const/4 v7, 0x1

    move/from16 v0, v23

    if-ne v7, v0, :cond_5

    .line 1242
    const v7, 0x7f0c0008

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v22, v9, v10

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto :goto_1

    .line 1244
    :cond_5
    const/4 v7, 0x2

    move/from16 v0, v23

    if-ne v7, v0, :cond_6

    .line 1246
    const v7, 0x7f0c0009

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v22, v9, v10

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto :goto_1

    :cond_6
    move-object/from16 v9, p8

    move-wide/from16 v10, p0

    move-wide/from16 v12, p2

    move/from16 v14, v19

    .line 1250
    invoke-static/range {v9 .. v14}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v17

    .line 1252
    .local v17, "dateString":Ljava/lang/String;
    const v7, 0x7f0c000a

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v17, v9, v10

    const/4 v10, 0x1

    aput-object v22, v9, v10

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_1

    .line 1258
    .end local v17    # "dateString":Ljava/lang/String;
    .end local v22    # "timeString":Ljava/lang/String;
    .end local v23    # "todayOrTomorrow":I
    :cond_7
    or-int v7, v19, v20

    const/high16 v9, 0x10000

    or-int/2addr v7, v9

    const v9, 0x8000

    or-int v14, v7, v9

    .local v14, "flagsDatetime":I
    move-object/from16 v9, p8

    move-wide/from16 v10, p0

    move-wide/from16 v12, p2

    .line 1260
    invoke-static/range {v9 .. v14}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_1
.end method

.method public static getDisplayedTimezone(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "startMillis"    # J
    .param p2, "localTimezone"    # Ljava/lang/String;
    .param p3, "eventTimezone"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1273
    const/4 v2, 0x0

    .line 1274
    .local v2, "tzDisplay":Ljava/lang/String;
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1276
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 1277
    .local v1, "tz":Ljava/util/TimeZone;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    const-string v5, "GMT"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1278
    :cond_0
    move-object v2, p2

    .line 1285
    .end local v1    # "tz":Ljava/util/TimeZone;
    :cond_1
    :goto_0
    return-object v2

    .line 1280
    .restart local v1    # "tz":Ljava/util/TimeZone;
    :cond_2
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1281
    .local v0, "startTime":Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 1282
    iget v3, v0, Landroid/text/format/Time;->isDst:I

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v1, v3, v4}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method public static getFirstDayOfWeek(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 485
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 486
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "preferences_week_start_day"

    const-string v4, "-1"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "pref":Ljava/lang/String;
    const-string v3, "-1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 491
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    .line 496
    .local v2, "startDay":I
    :goto_0
    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 497
    const/4 v3, 0x6

    .line 501
    :goto_1
    return v3

    .line 493
    .end local v2    # "startDay":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .restart local v2    # "startDay":I
    goto :goto_0

    .line 498
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 499
    const/4 v3, 0x1

    goto :goto_1

    .line 501
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getHideDeclinedEvents(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 518
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 519
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "preferences_hide_declined"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getJulianMondayFromWeeksSinceEpoch(I)I
    .locals 2
    .param p0, "week"    # I

    .prologue
    .line 476
    const v0, 0x253d89

    mul-int/lit8 v1, p0, 0x7

    add-int/2addr v0, v1

    return v0
.end method

.method public static getNextMidnight(Landroid/text/format/Time;JLjava/lang/String;)J
    .locals 2
    .param p0, "recycle"    # Landroid/text/format/Time;
    .param p1, "theTime"    # J
    .param p3, "tz"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 589
    if-nez p0, :cond_0

    .line 590
    new-instance p0, Landroid/text/format/Time;

    .end local p0    # "recycle":Landroid/text/format/Time;
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 592
    .restart local p0    # "recycle":Landroid/text/format/Time;
    :cond_0
    iput-object p3, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 593
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 594
    iget v0, p0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 595
    iput v1, p0, Landroid/text/format/Time;->hour:I

    .line 596
    iput v1, p0, Landroid/text/format/Time;->minute:I

    .line 597
    iput v1, p0, Landroid/text/format/Time;->second:I

    .line 598
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getOrCreateStrand(Ljava/util/HashMap;I)Lcom/android/calendar/Utils$DNAStrand;
    .locals 2
    .param p1, "color"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/Utils$DNAStrand;",
            ">;I)",
            "Lcom/android/calendar/Utils$DNAStrand;"
        }
    .end annotation

    .prologue
    .line 1077
    .local p0, "strands":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/calendar/Utils$DNAStrand;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Utils$DNAStrand;

    .line 1078
    .local v0, "strand":Lcom/android/calendar/Utils$DNAStrand;
    if-nez v0, :cond_0

    .line 1079
    new-instance v0, Lcom/android/calendar/Utils$DNAStrand;

    .end local v0    # "strand":Lcom/android/calendar/Utils$DNAStrand;
    invoke-direct {v0}, Lcom/android/calendar/Utils$DNAStrand;-><init>()V

    .line 1080
    .restart local v0    # "strand":Lcom/android/calendar/Utils$DNAStrand;
    iput p1, v0, Lcom/android/calendar/Utils$DNAStrand;->color:I

    .line 1081
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/calendar/Utils$DNAStrand;->count:I

    .line 1082
    iget v1, v0, Lcom/android/calendar/Utils$DNAStrand;->color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    :cond_0
    return-object v0
.end method

.method private static getPixelOffsetFromMinutes(III)I
    .locals 4
    .param p0, "minute"    # I
    .param p1, "workDayHeight"    # I
    .param p2, "remainderHeight"    # I

    .prologue
    .line 1006
    sget v1, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    if-ge p0, v1, :cond_0

    .line 1007
    mul-int v1, p0, p2

    sget v2, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    div-int v0, v1, v2

    .line 1015
    .local v0, "y":I
    :goto_0
    return v0

    .line 1008
    .end local v0    # "y":I
    :cond_0
    sget v1, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    if-ge p0, v1, :cond_1

    .line 1009
    sget v1, Lcom/android/calendar/Utils;->WORK_DAY_START_MINUTES:I

    sub-int v1, p0, v1

    mul-int/2addr v1, p1

    sget v2, Lcom/android/calendar/Utils;->WORK_DAY_MINUTES:I

    div-int/2addr v1, v2

    add-int v0, p2, v1

    .restart local v0    # "y":I
    goto :goto_0

    .line 1012
    .end local v0    # "y":I
    :cond_1
    add-int v1, p2, p1

    sget v2, Lcom/android/calendar/Utils;->WORK_DAY_END_MINUTES:I

    sub-int v2, p0, v2

    mul-int/2addr v2, p2

    sget v3, Lcom/android/calendar/Utils;->WORK_DAY_END_LENGTH:I

    div-int/2addr v2, v3

    add-int v0, v1, v2

    .restart local v0    # "y":I
    goto :goto_0
.end method

.method public static getQuickResponses(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1647
    const-string v1, "preferences_quick_responses"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1649
    if-nez v0, :cond_0

    .line 1650
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1653
    :cond_0
    return-object v0
.end method

.method public static getSearchAuthority(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".CalendarRecentSuggestionsProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 249
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 250
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 244
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 245
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 254
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 255
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # [Ljava/lang/String;

    .prologue
    .line 234
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 235
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const/4 v3, 0x0

    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 236
    .local v1, "ss":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 237
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 238
    .local v2, "strings":[Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 240
    .end local v2    # "strings":[Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_0
    move-object v3, p2

    goto :goto_0
.end method

.method public static getShowWeekNumber(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 509
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 510
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "preferences_show_week_num"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method protected static getTardis()J
    .locals 2

    .prologue
    .line 284
    sget-wide v0, Lcom/android/calendar/Utils;->mTardis:J

    return-wide v0
.end method

.method public static getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 215
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0, p1}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getViewTypeFromIntentAndSharedPref(Landroid/app/Activity;)I
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x2

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 143
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 144
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 146
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.EDIT"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 147
    const/4 v3, 0x5

    .line 161
    :cond_0
    :goto_0
    return v3

    .line 149
    :cond_1
    if-eqz v0, :cond_3

    .line 150
    const-string v4, "DETAIL_VIEW"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 152
    const-string v4, "preferred_detailedView"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    .line 154
    :cond_2
    const-string v4, "DAY"

    const-string v5, "VIEW"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 161
    :cond_3
    const-string v3, "preferred_startView"

    const/4 v4, 0x3

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0
.end method

.method public static getWeekNumberFromTime(JLandroid/content/Context;)I
    .locals 5
    .param p0, "millisSinceEpoch"    # J
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    .line 1121
    new-instance v1, Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-static {p2, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1122
    .local v1, "weekTime":Landroid/text/format/Time;
    invoke-virtual {v1, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 1123
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1124
    invoke-static {p2}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    .line 1128
    .local v0, "firstDayOfWeek":I
    iget v2, v1, Landroid/text/format/Time;->weekDay:I

    if-nez v2, :cond_2

    if-eqz v0, :cond_0

    if-ne v0, v4, :cond_2

    .line 1130
    :cond_0
    iget v2, v1, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 1131
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1136
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/text/format/Time;->getWeekNumber()I

    move-result v2

    return v2

    .line 1132
    :cond_2
    iget v2, v1, Landroid/text/format/Time;->weekDay:I

    if-ne v2, v4, :cond_1

    if-ne v0, v4, :cond_1

    .line 1133
    iget v2, v1, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 1134
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    goto :goto_0
.end method

.method public static getWeeksSinceEpochFromJulianDay(II)I
    .locals 3
    .param p0, "julianDay"    # I
    .param p1, "firstDayOfWeek"    # I

    .prologue
    .line 456
    rsub-int/lit8 v0, p1, 0x4

    .line 457
    .local v0, "diff":I
    if-gez v0, :cond_0

    .line 458
    add-int/lit8 v0, v0, 0x7

    .line 460
    :cond_0
    const v2, 0x253d8c

    sub-int v1, v2, v0

    .line 461
    .local v1, "refDay":I
    sub-int v2, p0, v1

    div-int/lit8 v2, v2, 0x7

    return v2
.end method

.method public static getWidgetScheduledUpdateAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".APPWIDGET_SCHEDULED_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWidgetUpdateAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".APPWIDGET_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEmailableFrom(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "syncAccountName"    # Ljava/lang/String;

    .prologue
    .line 1575
    invoke-static {p0}, Lcom/android/calendar/Utils;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSaturday(II)Z
    .locals 3
    .param p0, "column"    # I
    .param p1, "firstDayOfWeek"    # I

    .prologue
    const/4 v2, 0x6

    const/4 v0, 0x1

    .line 535
    if-nez p1, :cond_0

    if-eq p0, v2, :cond_2

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_2

    :cond_1
    if-ne p1, v2, :cond_3

    if-nez p0, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSunday(II)Z
    .locals 2
    .param p0, "column"    # I
    .param p1, "firstDayOfWeek"    # I

    .prologue
    const/4 v1, 0x6

    const/4 v0, 0x1

    .line 548
    if-nez p1, :cond_0

    if-eqz p0, :cond_2

    :cond_0
    if-ne p1, v0, :cond_1

    if-eq p0, v1, :cond_2

    :cond_1
    if-ne p1, v1, :cond_3

    if-ne p0, v0, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTodayOrTomorrow(Landroid/content/res/Resources;JJJ)I
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "dayMillis"    # J
    .param p3, "currentMillis"    # J
    .param p5, "localGmtOffset"    # J

    .prologue
    const/4 v3, 0x1

    .line 1313
    invoke-static {p1, p2, p5, p6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 1314
    .local v2, "startDay":I
    invoke-static {p3, p4, p5, p6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 1316
    .local v0, "currentDay":I
    sub-int v1, v2, v0

    .line 1317
    .local v1, "days":I
    if-ne v1, v3, :cond_1

    .line 1318
    const/4 v3, 0x2

    .line 1322
    :cond_0
    :goto_0
    return v3

    .line 1319
    :cond_1
    if-eqz v1, :cond_0

    .line 1322
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isValidEmail(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1565
    if-eqz p0, :cond_0

    const-string v0, "calendar.google.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "delim"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 429
    .local p0, "things":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 431
    .local v1, "first":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 432
    .local v3, "thing":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 433
    const/4 v1, 0x0

    .line 437
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 435
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 439
    .end local v3    # "thing":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static mailEventIcs(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1342
    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1344
    if-eqz p1, :cond_6

    .line 1346
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1347
    const-string v0, "EXTRA_ATTACHMENT_SHARE_NAME"

    const-string v1, "invite.ics"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1348
    const-string v0, "text/calendar"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1353
    :goto_0
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1354
    const/4 v2, 0x0

    .line 1355
    const/4 v1, 0x0

    .line 1356
    const/4 v0, 0x0

    .line 1358
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1359
    const/high16 v5, 0x10000

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 1361
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1362
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1363
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 1367
    const-string v6, "com.google"

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1368
    const-string v6, "com.google.android.gm"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1369
    const/4 v2, 0x1

    .line 1389
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 1392
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1399
    :cond_2
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1403
    if-eqz p7, :cond_3

    .line 1404
    const-string v0, "android.intent.extra.EMAIL"

    invoke-virtual {v3, v0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1409
    :cond_3
    if-eqz p8, :cond_4

    .line 1410
    const-string v0, "android.intent.extra.CC"

    invoke-virtual {v3, v0, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1413
    :cond_4
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v3, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1417
    if-eqz p1, :cond_a

    .line 1419
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1420
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1421
    if-eqz v0, :cond_5

    .line 1422
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_2

    .line 1350
    :cond_6
    const-string v0, "message/rfc822"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1372
    :cond_7
    const-string v6, "com.android.exchange"

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1373
    const-string v6, "com.android.email"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "com.google.android.email"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "com.motorola.motoemail"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1376
    :cond_8
    const/4 v2, 0x1

    .line 1377
    goto :goto_1

    .line 1383
    :cond_9
    const/4 v2, 0x0

    .line 1384
    goto :goto_1

    .line 1428
    :cond_a
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1429
    return-void
.end method

.method public static matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 330
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "columnNames":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 332
    const/4 v5, 0x0

    new-array v0, v5, [Ljava/lang/String;

    .line 334
    :cond_0
    new-instance v3, Landroid/database/MatrixCursor;

    invoke-direct {v3, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 335
    .local v3, "newCursor":Landroid/database/MatrixCursor;
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    .line 336
    .local v4, "numColumns":I
    new-array v1, v4, [Ljava/lang/String;

    .line 337
    .local v1, "data":[Ljava/lang/String;
    const/4 v5, -0x1

    invoke-interface {p0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 338
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 339
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 340
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 342
    :cond_1
    invoke-virtual {v3, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 344
    .end local v2    # "i":I
    :cond_2
    return-object v3
.end method

.method public static resetMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1188
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1192
    :cond_0
    :goto_0
    return-void

    .line 1191
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static returnToCalendarHome(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 1093
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/calendar/AllInOneActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1094
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1095
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1096
    const-string v1, "KEY_HOME"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1097
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1098
    return-void
.end method

.method public static setAllowWeekForDetailView(Z)V
    .locals 0
    .param p0, "allowWeekView"    # Z

    .prologue
    .line 635
    sput-boolean p0, Lcom/android/calendar/Utils;->mAllowWeekForDetailView:Z

    .line 636
    return-void
.end method

.method static setDefaultView(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "viewId"    # I

    .prologue
    const/4 v3, 0x1

    .line 308
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 309
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 311
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x0

    .line 312
    .local v2, "validDetailView":Z
    sget-boolean v4, Lcom/android/calendar/Utils;->mAllowWeekForDetailView:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    .line 313
    const/4 v2, 0x1

    .line 319
    :goto_0
    if-eqz v2, :cond_0

    .line 321
    const-string v3, "preferred_detailedView"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 325
    :cond_0
    const-string v3, "preferred_startView"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 326
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 327
    return-void

    .line 315
    :cond_1
    if-eq p1, v3, :cond_2

    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    :cond_2
    move v2, v3

    :goto_1
    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static setMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 7
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "timezone"    # Ljava/lang/String;

    .prologue
    .line 1174
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1184
    :cond_0
    :goto_0
    return-void

    .line 1177
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1178
    .local v0, "now":J
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1179
    .local v4, "time":Landroid/text/format/Time;
    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1180
    const v5, 0x15180

    iget v6, v4, Landroid/text/format/Time;->hour:I

    mul-int/lit16 v6, v6, 0xe10

    sub-int/2addr v5, v6

    iget v6, v4, Landroid/text/format/Time;->minute:I

    mul-int/lit8 v6, v6, 0x3c

    sub-int/2addr v5, v6

    iget v6, v4, Landroid/text/format/Time;->second:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v2, v5

    .line 1182
    .local v2, "runInMillis":J
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1183
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static setSharedPreference(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 295
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 296
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 297
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 298
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 299
    return-void
.end method

.method public static setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 266
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 267
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 268
    return-void
.end method

.method static setSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 288
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 289
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 290
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 291
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 292
    return-void
.end method

.method public static setSharedPreference(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;

    .prologue
    .line 271
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 272
    .local v1, "prefs":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 273
    .local v2, "set":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_0

    .line 274
    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 277
    return-void
.end method

.method public static setTimeChangesReceiver(Landroid/content/Context;Ljava/lang/Runnable;)Landroid/content/BroadcastReceiver;
    .locals 2

    .prologue
    .line 1623
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1624
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1625
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1626
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1627
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1629
    new-instance v1, Lcom/android/calendar/Utils$CalendarBroadcastReceiver;

    invoke-direct {v1, p1}, Lcom/android/calendar/Utils$CalendarBroadcastReceiver;-><init>(Ljava/lang/Runnable;)V

    .line 1630
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1631
    return-object v1
.end method

.method public static setTimeZone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 196
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0, p1}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->setTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public static setTodayIcon(Landroid/graphics/drawable/LayerDrawable;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const v3, 0x7f1000b4

    .line 1586
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1587
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/calendar/DayOfMonthDrawable;

    if-eqz v1, :cond_0

    .line 1588
    check-cast v0, Lcom/android/calendar/DayOfMonthDrawable;

    .line 1593
    :goto_0
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1594
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 1595
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 1596
    iget v1, v1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayOfMonthDrawable;->setDayOfMonth(I)V

    .line 1597
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1598
    invoke-virtual {p0, v3, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 1599
    return-void

    .line 1590
    :cond_0
    new-instance v0, Lcom/android/calendar/DayOfMonthDrawable;

    invoke-direct {v0, p1}, Lcom/android/calendar/DayOfMonthDrawable;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static setUpSearchView(Landroid/widget/SearchView;Landroid/app/Activity;)V
    .locals 2
    .param p0, "view"    # Landroid/widget/SearchView;
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 1108
    const-string v1, "search"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1109
    .local v0, "searchManager":Landroid/app/SearchManager;
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 1110
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/SearchView;->setQueryRefinementEnabled(Z)V

    .line 1111
    return-void
.end method

.method public static shareIcs(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1440
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1441
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1443
    if-eqz p1, :cond_1

    .line 1445
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1446
    const-string v0, "EXTRA_ATTACHMENT_SHARE_NAME"

    const-string v2, "invite.ics"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1447
    const-string v0, "text/calendar"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1452
    :goto_0
    const-string v0, "android.intent.extra.SUBJECT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0c00b3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1453
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1455
    if-eqz p1, :cond_2

    .line 1457
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1458
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1459
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1460
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1461
    if-eqz v0, :cond_0

    .line 1462
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, p1, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_1

    .line 1449
    :cond_1
    const-string v0, "message/rfc822"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1468
    :cond_2
    const v0, 0x7f0c00b0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1472
    :goto_2
    return-void

    .line 1469
    :catch_0
    move-exception v0

    .line 1470
    const-string v1, "CalUtils"

    const-string v2, "Cannot find activity "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static singleDayEvent(JJJ)Z
    .locals 5
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J
    .param p4, "localGmtOffset"    # J

    .prologue
    const/4 v2, 0x1

    .line 1292
    cmp-long v3, p0, p2

    if-nez v3, :cond_1

    .line 1300
    :cond_0
    :goto_0
    return v2

    .line 1298
    :cond_1
    invoke-static {p0, p1, p4, p5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 1299
    .local v1, "startDay":I
    const-wide/16 v3, 0x1

    sub-long v3, p2, v3

    invoke-static {v3, v4, p4, p5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 1300
    .local v0, "endDay":I
    if-eq v1, v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static tardis()V
    .locals 2

    .prologue
    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/calendar/Utils;->mTardis:J

    .line 281
    return-void
.end method

.method public static final timeFromIntentInMillis(Landroid/content/Intent;)J
    .locals 8
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v6, -0x1

    .line 387
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 388
    .local v0, "data":Landroid/net/Uri;
    const-string v5, "beginTime"

    invoke-virtual {p0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 389
    .local v2, "millis":J
    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 390
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 391
    .local v4, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "time"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 393
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 400
    .end local v4    # "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_1

    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 403
    :cond_1
    return-wide v2

    .line 394
    .restart local v4    # "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 395
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v5, "Calendar"

    const-string v6, "timeFromIntentInMillis: Data existed but no valid time found. Using current time."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static weaveDNAStrands(Ljava/util/LinkedList;ILjava/util/HashMap;II[I)V
    .locals 17
    .param p1, "firstJulianDay"    # I
    .param p3, "top"    # I
    .param p4, "bottom"    # I
    .param p5, "dayXs"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/calendar/Utils$DNASegment;",
            ">;I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/Utils$DNAStrand;",
            ">;II[I)V"
        }
    .end annotation

    .prologue
    .line 961
    .local p0, "segments":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/calendar/Utils$DNASegment;>;"
    .local p2, "strands":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/calendar/Utils$DNAStrand;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 962
    .local v9, "strandIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/calendar/Utils$DNAStrand;>;"
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 963
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/Utils$DNAStrand;

    .line 964
    .local v8, "strand":Lcom/android/calendar/Utils$DNAStrand;
    iget v14, v8, Lcom/android/calendar/Utils$DNAStrand;->count:I

    const/4 v15, 0x1

    if-ge v14, v15, :cond_0

    iget-object v14, v8, Lcom/android/calendar/Utils$DNAStrand;->allDays:[I

    if-nez v14, :cond_0

    .line 965
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 968
    :cond_0
    iget v14, v8, Lcom/android/calendar/Utils$DNAStrand;->count:I

    mul-int/lit8 v14, v14, 0x4

    new-array v14, v14, [F

    iput-object v14, v8, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    .line 969
    const/4 v14, 0x0

    iput v14, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    goto :goto_0

    .line 972
    .end local v8    # "strand":Lcom/android/calendar/Utils$DNAStrand;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/Utils$DNASegment;

    .line 974
    .local v7, "segment":Lcom/android/calendar/Utils$DNASegment;
    iget v14, v7, Lcom/android/calendar/Utils$DNASegment;->color:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/Utils$DNAStrand;

    .line 975
    .restart local v8    # "strand":Lcom/android/calendar/Utils$DNAStrand;
    iget v14, v7, Lcom/android/calendar/Utils$DNASegment;->day:I

    sub-int v2, v14, p1

    .line 976
    .local v2, "dayIndex":I
    iget v14, v7, Lcom/android/calendar/Utils$DNASegment;->startMinute:I

    rem-int/lit16 v3, v14, 0x5a0

    .line 977
    .local v3, "dayStartMinute":I
    iget v14, v7, Lcom/android/calendar/Utils$DNASegment;->endMinute:I

    rem-int/lit16 v1, v14, 0x5a0

    .line 978
    .local v1, "dayEndMinute":I
    sub-int v4, p4, p3

    .line 979
    .local v4, "height":I
    mul-int/lit8 v14, v4, 0x3

    div-int/lit8 v10, v14, 0x4

    .line 980
    .local v10, "workDayHeight":I
    sub-int v14, v4, v10

    div-int/lit8 v6, v14, 0x2

    .line 982
    .local v6, "remainderHeight":I
    aget v11, p5, v2

    .line 983
    .local v11, "x":I
    const/4 v12, 0x0

    .line 984
    .local v12, "y0":I
    const/4 v13, 0x0

    .line 986
    .local v13, "y1":I
    invoke-static {v3, v10, v6}, Lcom/android/calendar/Utils;->getPixelOffsetFromMinutes(III)I

    move-result v14

    add-int v12, p3, v14

    .line 987
    invoke-static {v1, v10, v6}, Lcom/android/calendar/Utils;->getPixelOffsetFromMinutes(III)I

    move-result v14

    add-int v13, p3, v14

    .line 992
    iget-object v14, v8, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    iget v15, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    int-to-float v0, v11

    move/from16 v16, v0

    aput v16, v14, v15

    .line 993
    iget-object v14, v8, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    iget v15, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    int-to-float v0, v12

    move/from16 v16, v0

    aput v16, v14, v15

    .line 994
    iget-object v14, v8, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    iget v15, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    int-to-float v0, v11

    move/from16 v16, v0

    aput v16, v14, v15

    .line 995
    iget-object v14, v8, Lcom/android/calendar/Utils$DNAStrand;->points:[F

    iget v15, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v8, Lcom/android/calendar/Utils$DNAStrand;->position:I

    int-to-float v0, v13

    move/from16 v16, v0

    aput v16, v14, v15

    goto :goto_1

    .line 997
    .end local v1    # "dayEndMinute":I
    .end local v2    # "dayIndex":I
    .end local v3    # "dayStartMinute":I
    .end local v4    # "height":I
    .end local v6    # "remainderHeight":I
    .end local v7    # "segment":Lcom/android/calendar/Utils$DNASegment;
    .end local v8    # "strand":Lcom/android/calendar/Utils$DNAStrand;
    .end local v10    # "workDayHeight":I
    .end local v11    # "x":I
    .end local v12    # "y0":I
    .end local v13    # "y1":I
    :cond_2
    return-void
.end method
