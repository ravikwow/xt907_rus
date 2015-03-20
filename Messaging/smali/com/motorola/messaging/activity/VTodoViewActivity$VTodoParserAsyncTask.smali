.class Lcom/motorola/messaging/activity/VTodoViewActivity$VTodoParserAsyncTask;
.super Landroid/os/AsyncTask;
.source "VTodoViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/VTodoViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VTodoParserAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/VTodoViewActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/VTodoViewActivity;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/motorola/messaging/activity/VTodoViewActivity$VTodoParserAsyncTask;->this$0:Lcom/motorola/messaging/activity/VTodoViewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;
    .locals 2
    .param p1, "params"    # [Landroid/net/Uri;

    .prologue
    .line 239
    const-string v0, "VTodoViewActivity"

    const-string v1, "doInBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/motorola/messaging/activity/VTodoViewActivity$VTodoParserAsyncTask;->this$0:Lcom/motorola/messaging/activity/VTodoViewActivity;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    # invokes: Lcom/motorola/messaging/activity/VTodoViewActivity;->parseVTodo(Landroid/net/Uri;)Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/VTodoViewActivity;->access$000(Lcom/motorola/messaging/activity/VTodoViewActivity;Landroid/net/Uri;)Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 235
    check-cast p1, [Landroid/net/Uri;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/activity/VTodoViewActivity$VTodoParserAsyncTask;->doInBackground([Landroid/net/Uri;)Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;)V
    .locals 2
    .param p1, "ca"    # Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;

    .prologue
    .line 244
    const-string v0, "VTodoViewActivity"

    const-string v1, "onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    if-nez p1, :cond_0

    .line 246
    const-string v0, "VTodoViewActivity"

    const-string v1, "parse error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/motorola/messaging/activity/VTodoViewActivity$VTodoParserAsyncTask;->this$0:Lcom/motorola/messaging/activity/VTodoViewActivity;

    invoke-virtual {v0}, Lcom/motorola/messaging/activity/VTodoViewActivity;->finish()V

    .line 257
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-boolean v0, p1, Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;->isVtodo:Z

    if-nez v0, :cond_1

    .line 252
    const-string v0, "VTodoViewActivity"

    const-string v1, "Not VTODO type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/motorola/messaging/activity/VTodoViewActivity$VTodoParserAsyncTask;->this$0:Lcom/motorola/messaging/activity/VTodoViewActivity;

    invoke-virtual {v0}, Lcom/motorola/messaging/activity/VTodoViewActivity;->finish()V

    goto :goto_0

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/activity/VTodoViewActivity$VTodoParserAsyncTask;->this$0:Lcom/motorola/messaging/activity/VTodoViewActivity;

    # invokes: Lcom/motorola/messaging/activity/VTodoViewActivity;->updateViewFromCalendarEvent(Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;)V
    invoke-static {v0, p1}, Lcom/motorola/messaging/activity/VTodoViewActivity;->access$100(Lcom/motorola/messaging/activity/VTodoViewActivity;Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 235
    check-cast p1, Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/activity/VTodoViewActivity$VTodoParserAsyncTask;->onPostExecute(Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;)V

    return-void
.end method
