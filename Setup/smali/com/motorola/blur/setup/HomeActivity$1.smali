.class Lcom/motorola/blur/setup/HomeActivity$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/HomeActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/HomeActivity;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/motorola/blur/setup/HomeActivity$1;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 135
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 136
    .local v0, "action":I
    if-nez v0, :cond_2

    const/4 v1, 0x1

    .line 137
    .local v1, "curDown":Z
    :goto_0
    const-string v6, "HomeActivity"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "Touch action = "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/motorola/blur/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 138
    if-eqz v1, :cond_1

    .line 139
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 140
    .local v3, "startX":F
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 141
    .local v4, "startY":F
    const-string v6, "HomeActivity"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "Action Down at "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, " "

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/motorola/blur/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 143
    .local v2, "height":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 145
    .local v5, "width":I
    iget-object v6, p0, Lcom/motorola/blur/setup/HomeActivity$1;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    iget v6, v6, Lcom/motorola/blur/setup/HomeActivity;->mCornerSize:I

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_3

    iget-object v6, p0, Lcom/motorola/blur/setup/HomeActivity$1;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    iget v6, v6, Lcom/motorola/blur/setup/HomeActivity;->mCornerSize:I

    int-to-float v6, v6

    cmpg-float v6, v4, v6

    if-gez v6, :cond_3

    .line 146
    iget-object v6, p0, Lcom/motorola/blur/setup/HomeActivity$1;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    const/4 v7, 0x1

    iput v7, v6, Lcom/motorola/blur/setup/HomeActivity;->mCornerCount:I

    .line 164
    :cond_0
    :goto_1
    const-string v6, "HomeActivity"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "Current corner count = "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/motorola/blur/setup/HomeActivity$1;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    iget v9, v9, Lcom/motorola/blur/setup/HomeActivity;->mCornerCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/motorola/blur/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 165
    iget-object v6, p0, Lcom/motorola/blur/setup/HomeActivity$1;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    iget v6, v6, Lcom/motorola/blur/setup/HomeActivity;->mCornerCount:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 167
    const-string v6, "HomeActivity"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "Four corners pressed. Transition the FSM to skip setup"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 168
    iget-object v6, p0, Lcom/motorola/blur/setup/HomeActivity$1;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    # getter for: Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;
    invoke-static {v6}, Lcom/motorola/blur/setup/HomeActivity;->access$600(Lcom/motorola/blur/setup/HomeActivity;)Lcom/motorola/blur/fsm/SetupFSM;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/blur/setup/HomeActivity$1;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/motorola/blur/fsm/SetupFSM;->onNext(Landroid/app/Activity;I)V

    .line 171
    .end local v2    # "height":I
    .end local v3    # "startX":F
    .end local v4    # "startY":F
    .end local v5    # "width":I
    :cond_1
    const/4 v6, 0x0

    return v6

    .line 136
    .end local v1    # "curDown":Z
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 148
    .restart local v1    # "curDown":Z
    .restart local v2    # "height":I
    .restart local v3    # "startX":F
    .restart local v4    # "startY":F
    .restart local v5    # "width":I
    :cond_3
    iget-object v6, p0, Lcom/motorola/blur/setup/HomeActivity$1;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    iget v6, v6, Lcom/motorola/blur/setup/HomeActivity;->mCornerSize:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_5

    iget-object v6, p0, Lcom/motorola/blur/setup/HomeActivity$1;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    iget v6, v6, Lcom/motorola/blur/setup/HomeActivity;->mCornerSize:I

    int-to-float v6, v6

    cmpg-float v6, v4, v6

    if-gez v6, :cond_5

    .line 149
    iget-object v6, p0, Lcom/motorola/blur/setup/HomeActivity$1;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    iget v6, v6, Lcom/motorola/blur/setup/HomeActivity;->mCornerCount:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/motorola/blur/setup/HomeActivity$1;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    iget v7, v6, Lcom/motorola/blur/setup/HomeActivity;->mCornerCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/motorola/blur/setup/HomeActivity;->mCornerCount:I

    goto :goto_1

    .line 150
    :cond_4
    iget-object v6, p0, Lcom/motorola/blur/setup/HomeActivity$1;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    iget v6, v6, Lcom/motorola/blur/setup/HomeActivity;->mCornerCount:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/motorola/blur/setup/HomeActivity$1;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    const/4 v7, 0x0

    iput v7, v6, Lcom/motorola/blur/setup/HomeActivity;->mCornerCount:I

    goto :goto_1

    .line 152
    :cond_5
    iget-object v6, p0, Lcom/motorola/blur/setup/HomeActivity$1;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    iget v6, v6, Lcom/motorola/blur/setup/HomeActivity;->mCornerSize:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_7

    iget-object v6, p0, Lcom/motorola/blur/setup/HomeActivity$1;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    iget v6, v6, Lcom/motorola/blur/setup/HomeActivity;->mCornerSize:I

    sub-int v6, v2, v6

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_7

    .line 153
    iget-object v6, p0, Lcom/motorola/blur/setup/HomeActivity$1;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    iget v6, v6, Lcom/motorola/blur/setup/HomeActivity;->mCornerCount:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    iget-object v6, p0, Lcom/motorola/blur/setup/HomeActivity$1;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    iget v7, v6, Lcom/motorola/blur/setup/HomeActivity;->mCornerCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/motorola/blur/setup/HomeActivity;->mCornerCount:I

    goto/16 :goto_1

    .line 154
    :cond_6
    iget-object v6, p0, Lcom/motorola/blur/setup/HomeActivity$1;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    iget v6, v6, Lcom/motorola/blur/setup/HomeActivity;->mCornerCount:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/motorola/blur/setup/HomeActivity$1;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    const/4 v7, 0x0

    iput v7, v6, Lcom/motorola/blur/setup/HomeActivity;->mCornerCount:I

    goto/16 :goto_1

    .line 156
    :cond_7
    iget-object v6, p0, Lcom/motorola/blur/setup/HomeActivity$1;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    iget v6, v6, Lcom/motorola/blur/setup/HomeActivity;->mCornerSize:I

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_9

    iget-object v6, p0, Lcom/motorola/blur/setup/HomeActivity$1;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    iget v6, v6, Lcom/motorola/blur/setup/HomeActivity;->mCornerSize:I

    sub-int v6, v2, v6

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_9

    .line 157
    iget-object v6, p0, Lcom/motorola/blur/setup/HomeActivity$1;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    iget v6, v6, Lcom/motorola/blur/setup/HomeActivity;->mCornerCount:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    iget-object v6, p0, Lcom/motorola/blur/setup/HomeActivity$1;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    iget v7, v6, Lcom/motorola/blur/setup/HomeActivity;->mCornerCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/motorola/blur/setup/HomeActivity;->mCornerCount:I

    goto/16 :goto_1

    .line 158
    :cond_8
    iget-object v6, p0, Lcom/motorola/blur/setup/HomeActivity$1;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    iget v6, v6, Lcom/motorola/blur/setup/HomeActivity;->mCornerCount:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/motorola/blur/setup/HomeActivity$1;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    const/4 v7, 0x0

    iput v7, v6, Lcom/motorola/blur/setup/HomeActivity;->mCornerCount:I

    goto/16 :goto_1

    .line 161
    :cond_9
    iget-object v6, p0, Lcom/motorola/blur/setup/HomeActivity$1;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    const/4 v7, 0x0

    iput v7, v6, Lcom/motorola/blur/setup/HomeActivity;->mCornerCount:I

    goto/16 :goto_1
.end method
