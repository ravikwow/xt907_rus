.class Lcom/android/contacts/calllog/CallLogAdapter$3;
.super Landroid/os/Handler;
.source "CallLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/calllog/CallLogAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/calllog/CallLogAdapter;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogAdapter$3;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 267
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 275
    :goto_0
    return-void

    .line 269
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter$3;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 272
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter$3;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    # invokes: Lcom/android/contacts/calllog/CallLogAdapter;->startRequestProcessing()V
    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogAdapter;->access$200(Lcom/android/contacts/calllog/CallLogAdapter;)V

    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
