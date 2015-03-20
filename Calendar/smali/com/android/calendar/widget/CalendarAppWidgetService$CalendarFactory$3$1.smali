.class Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$3$1;
.super Ljava/lang/Object;
.source "CalendarAppWidgetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$3;

.field final synthetic val$selection:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$3;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$3$1;->this$1:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$3;

    iput-object p2, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$3$1;->val$selection:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$3$1;->this$1:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$3;

    iget-object v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$3;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$3$1;->val$selection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->initLoader(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$3$1;->this$1:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$3;

    iget-object v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$3;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 586
    return-void
.end method
