.class public Lcom/android/calendar/alerts/AlertService$NotificationMgrWrapper;
.super Ljava/lang/Object;
.source "AlertService.java"

# interfaces
.implements Lcom/android/calendar/alerts/NotificationMgr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/AlertService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationMgrWrapper"
.end annotation


# instance fields
.field mNm:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/app/NotificationManager;)V
    .locals 0
    .param p1, "nm"    # Landroid/app/NotificationManager;

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertService$NotificationMgrWrapper;->mNm:Landroid/app/NotificationManager;

    .line 152
    return-void
.end method


# virtual methods
.method public cancel(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationMgrWrapper;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 157
    return-void
.end method

.method public cancelAll()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationMgrWrapper;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 167
    return-void
.end method

.method public notify(ILcom/android/calendar/alerts/AlertService$NotificationWrapper;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "nw"    # Lcom/android/calendar/alerts/AlertService$NotificationWrapper;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationMgrWrapper;->mNm:Landroid/app/NotificationManager;

    iget-object v1, p2, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 172
    return-void
.end method
