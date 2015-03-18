.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 2465
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 2467
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2468
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2469
    const/4 v1, 0x0

    .line 2470
    .local v1, "flags":I
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2471
    const-string v4, "reason"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2472
    .local v3, "reason":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, "recentapps"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2473
    or-int/lit8 v1, v1, 0x2

    .line 2476
    .end local v3    # "reason":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse(I)V

    .line 2550
    .end local v1    # "flags":I
    :cond_1
    :goto_0
    return-void

    .line 2478
    :cond_2
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2480
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->performCollapse()V

    goto :goto_0

    .line 2482
    :cond_3
    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2483
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateResources()V

    .line 2484
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 2485
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/16 v5, -0x2710

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    goto :goto_0

    .line 2488
    :cond_4
    const-string v4, "android.intent.action.BATTERY_TEMP_COOLDOWN_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2489
    const-string v4, "state"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 2490
    .local v2, "mode":Z
    const-string v4, "PhoneStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "battery cool down mode is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2492
    if-eqz v2, :cond_5

    .line 2493
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2494
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2495
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0

    .line 2497
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2498
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2499
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeSearchActionListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0
.end method
