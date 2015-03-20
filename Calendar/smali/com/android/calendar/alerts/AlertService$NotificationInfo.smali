.class Lcom/android/calendar/alerts/AlertService$NotificationInfo;
.super Ljava/lang/Object;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/AlertService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationInfo"
.end annotation


# instance fields
.field allDay:Z

.field description:Ljava/lang/String;

.field endMillis:J

.field eventId:J

.field eventName:Ljava/lang/String;

.field location:Ljava/lang/String;

.field newAlert:Z

.field startMillis:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJZZ)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "startMillis"    # J
    .param p6, "endMillis"    # J
    .param p8, "eventId"    # J
    .param p10, "allDay"    # Z
    .param p11, "newAlert"    # Z

    .prologue
    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 731
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventName:Ljava/lang/String;

    .line 732
    iput-object p2, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->location:Ljava/lang/String;

    .line 733
    iput-object p3, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->description:Ljava/lang/String;

    .line 734
    iput-wide p4, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    .line 735
    iput-wide p6, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->endMillis:J

    .line 736
    iput-wide p8, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventId:J

    .line 737
    iput-boolean p11, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->newAlert:Z

    .line 738
    iput-boolean p10, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->allDay:Z

    .line 739
    return-void
.end method
