.class Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
.super Ljava/lang/Object;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/agenda/AgendaByDayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RowInfo"
.end annotation


# instance fields
.field final mAllDay:Z

.field final mDay:I

.field final mEventEndTimeMilli:J

.field final mEventId:J

.field final mEventStartTimeMilli:J

.field mFirstDayAfterYesterday:Z

.field final mInstanceId:J

.field final mPosition:I

.field final mType:I


# direct methods
.method constructor <init>(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "julianDay"    # I

    .prologue
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput p1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    .line 450
    iput p2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    .line 451
    iput v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mPosition:I

    .line 452
    iput-wide v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventId:J

    .line 453
    iput-wide v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    .line 454
    iput-wide v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventEndTimeMilli:J

    .line 455
    iput-boolean v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mFirstDayAfterYesterday:Z

    .line 456
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mInstanceId:J

    .line 457
    iput-boolean v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mAllDay:Z

    .line 458
    return-void
.end method

.method constructor <init>(IIIJJJJZ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "julianDay"    # I
    .param p3, "position"    # I
    .param p4, "id"    # J
    .param p6, "startTime"    # J
    .param p8, "endTime"    # J
    .param p10, "instanceId"    # J
    .param p12, "allDay"    # Z

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    iput p1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    .line 438
    iput p2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    .line 439
    iput p3, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mPosition:I

    .line 440
    iput-wide p4, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventId:J

    .line 441
    iput-wide p6, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    .line 442
    iput-wide p8, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventEndTimeMilli:J

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mFirstDayAfterYesterday:Z

    .line 444
    iput-wide p10, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mInstanceId:J

    .line 445
    iput-boolean p12, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mAllDay:Z

    .line 446
    return-void
.end method
