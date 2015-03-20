.class public Lcom/android/calendar/alerts/AlertService$NotificationWrapper;
.super Ljava/lang/Object;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/AlertService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationWrapper"
.end annotation


# instance fields
.field mBegin:J

.field mEnd:J

.field mEventId:J

.field mNotification:Landroid/app/Notification;

.field mNw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/alerts/AlertService$NotificationWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Notification;)V
    .locals 0
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mNotification:Landroid/app/Notification;

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;IJJJZ)V
    .locals 0
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "notificationId"    # I
    .param p3, "eventId"    # J
    .param p5, "startMillis"    # J
    .param p7, "endMillis"    # J
    .param p9, "doPopup"    # Z

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mNotification:Landroid/app/Notification;

    .line 126
    iput-wide p3, p0, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mEventId:J

    .line 127
    iput-wide p5, p0, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mBegin:J

    .line 128
    iput-wide p7, p0, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mEnd:J

    .line 132
    return-void
.end method


# virtual methods
.method public add(Lcom/android/calendar/alerts/AlertService$NotificationWrapper;)V
    .locals 1
    .param p1, "nw"    # Lcom/android/calendar/alerts/AlertService$NotificationWrapper;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mNw:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mNw:Ljava/util/ArrayList;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mNw:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method
