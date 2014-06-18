.class Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SmartDialerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/dialpad/SmartDialerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAsyncQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;


# direct methods
.method public constructor <init>(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 808
    iput-object p1, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    .line 809
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 810
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x0

    .line 745
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 746
    .local v0, "currTime":J
    packed-switch p1, :pswitch_data_0

    .line 806
    .end local p2    # "cookie":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 748
    .restart local p2    # "cookie":Ljava/lang/Object;
    :pswitch_0
    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->DBG:Z
    invoke-static {}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$200()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    const-string v3, "QUERY_MOST_RECENT finish"

    # invokes: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$300(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V

    .line 749
    :cond_1
    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->activityGone:Z
    invoke-static {v2}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$600(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 750
    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # setter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMostRecentCursor:Landroid/database/Cursor;
    invoke-static {v2, p3}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$702(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 751
    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    iget-object v3, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMostRecentCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$700(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 752
    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->DBG:Z
    invoke-static {}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$200()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    const-string v3, "QUERY_MOST_RECENT calling updateSingleItemAndTitle()"

    # invokes: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$300(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V

    .line 753
    :cond_2
    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    invoke-virtual {v2}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->updateSingleItemAndTitle()V

    goto :goto_0

    .line 755
    :cond_3
    if-eqz p3, :cond_4

    .line 756
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 760
    :cond_4
    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMostRecentCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$700(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 761
    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMostRecentCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$700(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 762
    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # setter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMostRecentCursor:Landroid/database/Cursor;
    invoke-static {v2, v6}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$702(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0

    .line 771
    :pswitch_1
    const/16 v2, 0x3ea

    if-ne p1, v2, :cond_8

    .line 772
    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->DBG:Z
    invoke-static {}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$200()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QUERY_EXACT_MATCHED cost time =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContactStartTime:J
    invoke-static {v4}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$800(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$300(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V

    .line 780
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->activityGone:Z
    invoke-static {v2}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$600(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 781
    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # setter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMatchedCursor:Landroid/database/Cursor;
    invoke-static {v2, p3}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$902(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 782
    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "cookie":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mQueriedDigits:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$1002(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 783
    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    iget-object v3, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMatchedCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$900(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 785
    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMatchedCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$900(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMatchedCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$900(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_9

    .line 786
    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mdialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;
    invoke-static {v2}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$000(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Lcom/android/contacts/dialpad/DialpadFragment;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->showList(Z)V

    .line 792
    :cond_6
    :goto_2
    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->DBG:Z
    invoke-static {}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$200()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    const-string v3, "QUERY_MATCH calling updateSingleItemAndTitle()"

    # invokes: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$300(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V

    .line 793
    :cond_7
    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    invoke-virtual {v2}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->updateSingleItemAndTitle()V

    goto/16 :goto_0

    .line 774
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_8
    const/16 v2, 0x3e9

    if-ne p1, v2, :cond_5

    .line 775
    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->DBG:Z
    invoke-static {}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$200()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QUERY_FUZZY_MATCHED cost time =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContactStartTime:J
    invoke-static {v4}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$800(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$300(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 788
    .end local p2    # "cookie":Ljava/lang/Object;
    :cond_9
    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    iget-boolean v2, v2, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mAutoExpandList:Z

    if-eqz v2, :cond_6

    .line 789
    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mdialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;
    invoke-static {v2}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$000(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Lcom/android/contacts/dialpad/DialpadFragment;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->showList(Z)V

    goto :goto_2

    .line 795
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_a
    if-eqz p3, :cond_b

    .line 796
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 798
    :cond_b
    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMatchedCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$900(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 799
    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMatchedCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$900(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 800
    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # setter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMatchedCursor:Landroid/database/Cursor;
    invoke-static {v2, v6}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$902(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;

    goto/16 :goto_0

    .line 746
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
