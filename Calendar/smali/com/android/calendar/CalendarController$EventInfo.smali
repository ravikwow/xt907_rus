.class public Lcom/android/calendar/CalendarController$EventInfo;
.super Ljava/lang/Object;
.source "CalendarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventInfo"
.end annotation


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field public endTime:Landroid/text/format/Time;

.field public eventType:J

.field public extraLong:J

.field public extras:Landroid/os/Bundle;

.field public id:J

.field public query:Ljava/lang/String;

.field public selectedTime:Landroid/text/format/Time;

.field public startTime:Landroid/text/format/Time;

.field public viewType:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarController$EventInfo;->extras:Landroid/os/Bundle;

    return-void
.end method

.method public static buildViewExtraLong(IZ)J
    .locals 7
    .param p0, "response"    # I
    .param p1, "allDay"    # Z

    .prologue
    const-wide/16 v5, 0x1

    .line 229
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x100

    .line 231
    .local v0, "extra":J
    :goto_0
    packed-switch p0, :pswitch_data_0

    .line 245
    :pswitch_0
    const-string v2, "CalendarController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown attendee response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    or-long/2addr v0, v5

    .line 249
    :goto_1
    return-wide v0

    .line 229
    .end local v0    # "extra":J
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 233
    .restart local v0    # "extra":J
    :pswitch_1
    or-long/2addr v0, v5

    .line 234
    goto :goto_1

    .line 236
    :pswitch_2
    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    .line 237
    goto :goto_1

    .line 239
    :pswitch_3
    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    .line 240
    goto :goto_1

    .line 242
    :pswitch_4
    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    .line 243
    goto :goto_1

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getResponse()I
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 206
    iget-wide v3, p0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v5, 0x2

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 207
    const-string v2, "CalendarController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal call to getResponse , wrong event type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_0
    :pswitch_0
    return v1

    .line 211
    :cond_0
    iget-wide v3, p0, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v0, v3

    .line 212
    .local v0, "response":I
    packed-switch v0, :pswitch_data_0

    .line 222
    :pswitch_1
    const-string v1, "CalendarController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown attendee response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 224
    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 216
    goto :goto_0

    .line 218
    :pswitch_3
    const/4 v1, 0x2

    goto :goto_0

    .line 220
    :pswitch_4
    const/4 v1, 0x4

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public isAllDay()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 198
    iget-wide v1, p0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v3, 0x2

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 199
    const-string v1, "CalendarController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal call to isAllDay , wrong event type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v1, p0, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    const-wide/16 v3, 0x100

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
