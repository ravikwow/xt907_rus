.class public Lcom/android/alarmclock/DigitalAppWidgetService;
.super Landroid/widget/RemoteViewsService;
.source "DigitalAppWidgetService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 2
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 28
    new-instance v0, Lcom/android/alarmclock/DigitalWidgetViewsFactory;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/alarmclock/DigitalWidgetViewsFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method
