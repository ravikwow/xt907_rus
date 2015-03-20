.class Lcom/android/calendar/EventInfoFragment$18;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoFragment;->saveEventToDB(Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoFragment;

.field final synthetic val$accountInfo:Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;

.field final synthetic val$eventId:J


# direct methods
.method constructor <init>(Lcom/android/calendar/EventInfoFragment;Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;J)V
    .locals 0

    .prologue
    .line 3128
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$18;->this$0:Lcom/android/calendar/EventInfoFragment;

    iput-object p2, p0, Lcom/android/calendar/EventInfoFragment$18;->val$accountInfo:Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;

    iput-wide p3, p0, Lcom/android/calendar/EventInfoFragment$18;->val$eventId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v4, 0x1

    .line 3130
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$18;->this$0:Lcom/android/calendar/EventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$18;->val$accountInfo:Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;

    iget-wide v2, p0, Lcom/android/calendar/EventInfoFragment$18;->val$eventId:J

    # invokes: Lcom/android/calendar/EventInfoFragment;->replaceEventInDB(Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/EventInfoFragment;->access$5500(Lcom/android/calendar/EventInfoFragment;Lcom/android/calendar/EventInfoFragment$CalendarAccountInfo;J)V

    .line 3131
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$18;->this$0:Lcom/android/calendar/EventInfoFragment;

    # invokes: Lcom/android/calendar/EventInfoFragment;->destroyICalView(ZZ)V
    invoke-static {v0, v4, v4}, Lcom/android/calendar/EventInfoFragment;->access$5300(Lcom/android/calendar/EventInfoFragment;ZZ)V

    .line 3132
    return-void
.end method
