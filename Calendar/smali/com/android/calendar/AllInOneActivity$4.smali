.class Lcom/android/calendar/AllInOneActivity$4;
.super Landroid/database/ContentObserver;
.source "AllInOneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AllInOneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AllInOneActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/calendar/AllInOneActivity$4;->this$0:Lcom/android/calendar/AllInOneActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity$4;->this$0:Lcom/android/calendar/AllInOneActivity;

    invoke-virtual {v0}, Lcom/android/calendar/AllInOneActivity;->eventsChanged()V

    .line 285
    return-void
.end method
