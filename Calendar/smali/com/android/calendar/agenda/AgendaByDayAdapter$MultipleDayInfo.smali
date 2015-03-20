.class Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;
.super Ljava/lang/Object;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/agenda/AgendaByDayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultipleDayInfo"
.end annotation


# instance fields
.field final mAllDay:Z

.field final mEndDay:I

.field mEventEndTimeMilli:J

.field final mEventId:J

.field mEventStartTimeMilli:J

.field final mInstanceId:J

.field final mPosition:I


# direct methods
.method constructor <init>(IIJJJJZ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "endDay"    # I
    .param p3, "id"    # J
    .param p5, "startTime"    # J
    .param p7, "endTime"    # J
    .param p9, "instanceId"    # J
    .param p11, "allDay"    # Z

    .prologue
    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    iput p1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    .line 473
    iput p2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    .line 474
    iput-wide p3, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventId:J

    .line 475
    iput-wide p5, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventStartTimeMilli:J

    .line 476
    iput-wide p7, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventEndTimeMilli:J

    .line 477
    iput-wide p9, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mInstanceId:J

    .line 478
    iput-boolean p11, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mAllDay:Z

    .line 479
    return-void
.end method
