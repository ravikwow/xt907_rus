.class final Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$1;
.super Ljava/lang/Object;
.source "SelectSyncedCalendarsMultiAccountAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    # setter for: Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mRefresh:Z
    invoke-static {v0}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->access$002(Z)Z

    .line 69
    return-void
.end method
