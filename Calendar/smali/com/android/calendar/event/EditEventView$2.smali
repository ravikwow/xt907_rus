.class Lcom/android/calendar/event/EditEventView$2;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EditEventView;->showTimezoneDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EditEventView;

.field final synthetic val$timezoneFooterView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView$2;->this$0:Lcom/android/calendar/event/EditEventView;

    iput-object p2, p0, Lcom/android/calendar/event/EditEventView$2;->val$timezoneFooterView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 404
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView$2;->this$0:Lcom/android/calendar/event/EditEventView;

    # getter for: Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/calendar/event/EditEventView;->access$900(Lcom/android/calendar/event/EditEventView;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView$2;->val$timezoneFooterView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 405
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView$2;->this$0:Lcom/android/calendar/event/EditEventView;

    # getter for: Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;
    invoke-static {v1}, Lcom/android/calendar/event/EditEventView;->access$1000(Lcom/android/calendar/event/EditEventView;)Lcom/android/calendar/TimezoneAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/TimezoneAdapter;->showAllTimezones()V

    .line 406
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView$2;->this$0:Lcom/android/calendar/event/EditEventView;

    # getter for: Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;
    invoke-static {v1}, Lcom/android/calendar/event/EditEventView;->access$1000(Lcom/android/calendar/event/EditEventView;)Lcom/android/calendar/TimezoneAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView$2;->this$0:Lcom/android/calendar/event/EditEventView;

    # getter for: Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/calendar/event/EditEventView;->access$1100(Lcom/android/calendar/event/EditEventView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v0

    .line 409
    .local v0, "row":I
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView$2;->this$0:Lcom/android/calendar/event/EditEventView;

    # getter for: Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/calendar/event/EditEventView;->access$900(Lcom/android/calendar/event/EditEventView;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/event/EditEventView$2$1;

    invoke-direct {v2, p0, v0}, Lcom/android/calendar/event/EditEventView$2$1;-><init>(Lcom/android/calendar/event/EditEventView$2;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 416
    return-void
.end method
