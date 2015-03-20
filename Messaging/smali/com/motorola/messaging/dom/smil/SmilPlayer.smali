.class public Lcom/motorola/messaging/dom/smil/SmilPlayer;
.super Ljava/lang/Object;
.source "SmilPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;,
        Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;,
        Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;
    }
.end annotation


# static fields
.field private static sPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

.field private static final sTimelineEntryComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAction:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

.field private mActiveElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/smil/ElementTime;",
            ">;"
        }
    .end annotation
.end field

.field private mAllEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentElement:I

.field private mCurrentSlide:I

.field private mCurrentTime:J

.field private mMediaTimeUpdatedEvent:Lorg/w3c/dom/events/Event;

.field private mPlayerThread:Ljava/lang/Thread;

.field private mRoot:Lorg/w3c/dom/smil/ElementTime;

.field private mSlideEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$1;

    invoke-direct {v0}, Lcom/motorola/messaging/dom/smil/SmilPlayer$1;-><init>()V

    sput-object v0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->sTimelineEntryComparator:Ljava/util/Comparator;

    .line 80
    new-instance v0, Lcom/motorola/messaging/dom/smil/SmilPlayer;

    invoke-direct {v0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;-><init>()V

    sput-object v0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->sPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    sget-object v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;->INITIALIZED:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    .line 91
    sget-object v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAction:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 258
    return-void
.end method

.method private declared-synchronized actionEntry(Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;)V
    .locals 4
    .param p1, "entry"    # Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    .prologue
    .line 612
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    .line 613
    const-string v0, "SmilPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actionEntry, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;->getAction()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 636
    :goto_0
    monitor-exit p0

    return-void

    .line 618
    :pswitch_0
    :try_start_1
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_1

    .line 619
    const-string v0, "SmilPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[START]  at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :cond_1
    invoke-virtual {p1}, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->beginElement()Z

    .line 623
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/List;

    invoke-virtual {p1}, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 626
    :pswitch_1
    :try_start_2
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_2

    .line 627
    const-string v0, "SmilPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[STOP]   at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :cond_2
    invoke-virtual {p1}, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->endElement()Z

    .line 631
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/List;

    invoke-virtual {p1}, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 616
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized actionNext()Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    .locals 1

    .prologue
    .line 749
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->stopCurrentSlide()V

    .line 750
    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->loadNextSlide()Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 749
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized actionPause()V
    .locals 3

    .prologue
    .line 639
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    .line 640
    const-string v0, "SmilPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actionPause, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :cond_0
    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->pauseActiveElements()V

    .line 644
    sget-object v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;->PAUSED:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    .line 645
    sget-object v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAction:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    monitor-exit p0

    return-void

    .line 639
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized actionPrev()Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    .locals 1

    .prologue
    .line 754
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->stopCurrentSlide()V

    .line 755
    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->loadPrevSlide()Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 754
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized actionRestart()Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    .locals 1

    .prologue
    .line 759
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->stopCurrentSlide()V

    .line 760
    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->loadCurrentSlide()Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 759
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized actionStop()V
    .locals 3

    .prologue
    .line 649
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    .line 650
    const-string v0, "SmilPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actionStop, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    :cond_0
    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->endActiveElements()V

    .line 654
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 655
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 656
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentSlide:I

    .line 657
    sget-object v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;->STOPPED:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    .line 658
    sget-object v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAction:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    monitor-exit p0

    return-void

    .line 649
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized beginSmilDocument()V
    .locals 3

    .prologue
    .line 462
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    .line 463
    .local v0, "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    invoke-direct {p0, v0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->actionEntry(Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    monitor-exit p0

    return-void

    .line 462
    .end local v0    # "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized endActiveElements()V
    .locals 6

    .prologue
    .line 556
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 557
    iget-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 558
    .local v0, "element":Lorg/w3c/dom/smil/ElementTime;
    sget-boolean v2, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v2, :cond_0

    .line 559
    const-string v2, "SmilPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[STOP]   at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->endElement()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 564
    .end local v0    # "element":Lorg/w3c/dom/smil/ElementTime;
    :cond_1
    monitor-exit p0

    return-void

    .line 556
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized getOffsetTime(Lorg/w3c/dom/smil/ElementTime;)D
    .locals 6
    .param p1, "element"    # Lorg/w3c/dom/smil/ElementTime;

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentSlide:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentElement:I

    if-ge v1, v2, :cond_1

    .line 468
    iget-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    .line 469
    .local v0, "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    invoke-virtual {v0}, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    invoke-virtual {v0}, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    .line 473
    .end local v0    # "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    :goto_1
    monitor-exit p0

    return-wide v2

    .line 467
    .restart local v0    # "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 473
    .end local v0    # "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    :cond_1
    const-wide/high16 v2, -0x4010000000000000L

    goto :goto_1

    .line 467
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private static getParTimeline(Lorg/w3c/dom/smil/ElementParallelTimeContainer;DD)Ljava/util/List;
    .locals 23
    .param p0, "par"    # Lorg/w3c/dom/smil/ElementParallelTimeContainer;
    .param p1, "offset"    # D
    .param p3, "maxOffset"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/ElementParallelTimeContainer;",
            "DD)",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v19, "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;>;"
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v16

    .line 105
    .local v16, "myBeginList":Lorg/w3c/dom/smil/TimeList;
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v5

    .line 106
    .local v5, "begin":Lorg/w3c/dom/smil/Time;
    invoke-interface {v5}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v20

    add-double v6, v20, p1

    .line 107
    .local v6, "beginOffset":D
    cmpl-double v20, v6, p3

    if-lez v20, :cond_0

    .line 149
    :goto_0
    return-object v19

    .line 111
    :cond_0
    new-instance v15, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v15, v6, v7, v0, v1}, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 112
    .local v15, "myBegin":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v18

    .line 119
    .local v18, "myEndList":Lorg/w3c/dom/smil/TimeList;
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v11

    .line 120
    .local v11, "end":Lorg/w3c/dom/smil/Time;
    invoke-interface {v11}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v20

    add-double v12, v20, p1

    .line 121
    .local v12, "endOffset":D
    cmpl-double v20, v12, p3

    if-lez v20, :cond_1

    .line 122
    move-wide/from16 v12, p3

    .line 124
    :cond_1
    new-instance v17, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v12, v13, v1, v2}, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 126
    .local v17, "myEnd":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    move-wide/from16 p3, v12

    .line 128
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 129
    .local v10, "children":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    move/from16 v0, v20

    if-ge v14, v0, :cond_2

    .line 130
    invoke-interface {v10, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/smil/ElementTime;

    .line 131
    .local v8, "child":Lorg/w3c/dom/smil/ElementTime;
    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-static {v8, v0, v1, v2, v3}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->getTimeline(Lorg/w3c/dom/smil/ElementTime;DD)Ljava/util/List;

    move-result-object v9

    .line 132
    .local v9, "childTimeline":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;>;"
    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 135
    .end local v8    # "child":Lorg/w3c/dom/smil/ElementTime;
    .end local v9    # "childTimeline":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;>;"
    :cond_2
    sget-object v20, Lcom/motorola/messaging/dom/smil/SmilPlayer;->sTimelineEntryComparator:Ljava/util/Comparator;

    invoke-static/range {v19 .. v20}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 138
    sub-double v20, v12, p1

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x447a0000

    mul-float v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 140
    .local v4, "activeChildrenAtEnd":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    :goto_2
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    move/from16 v0, v20

    if-ge v14, v0, :cond_3

    .line 141
    new-instance v21, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    invoke-interface {v4, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/smil/ElementTime;

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-direct {v0, v12, v13, v1, v2}, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 147
    :cond_3
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static getPlayer()Lcom/motorola/messaging/dom/smil/SmilPlayer;
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->sPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

    return-object v0
.end method

.method private static getSeqTimeline(Lorg/w3c/dom/smil/ElementSequentialTimeContainer;DD)Ljava/util/ArrayList;
    .locals 25
    .param p0, "seq"    # Lorg/w3c/dom/smil/ElementSequentialTimeContainer;
    .param p1, "offset"    # D
    .param p3, "maxOffset"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/ElementSequentialTimeContainer;",
            "DD)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v21, "timeline":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;>;"
    move-wide/from16 v19, p1

    .line 158
    .local v19, "orgOffset":D
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v16

    .line 163
    .local v16, "myBeginList":Lorg/w3c/dom/smil/TimeList;
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v5

    .line 164
    .local v5, "begin":Lorg/w3c/dom/smil/Time;
    invoke-interface {v5}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v22

    add-double v6, v22, p1

    .line 165
    .local v6, "beginOffset":D
    cmpl-double v22, v6, p3

    if-lez v22, :cond_0

    .line 209
    :goto_0
    return-object v21

    .line 169
    :cond_0
    new-instance v15, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v15, v6, v7, v0, v1}, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 170
    .local v15, "myBegin":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v18

    .line 177
    .local v18, "myEndList":Lorg/w3c/dom/smil/TimeList;
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v11

    .line 178
    .local v11, "end":Lorg/w3c/dom/smil/Time;
    invoke-interface {v11}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v22

    add-double v12, v22, p1

    .line 179
    .local v12, "endOffset":D
    cmpl-double v22, v12, p3

    if-lez v22, :cond_1

    .line 180
    move-wide/from16 v12, p3

    .line 182
    :cond_1
    new-instance v17, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-direct {v0, v12, v13, v1, v2}, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 184
    .local v17, "myEnd":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    move-wide/from16 p3, v12

    .line 187
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 188
    .local v10, "children":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v14, v0, :cond_2

    .line 189
    invoke-interface {v10, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/smil/ElementTime;

    .line 190
    .local v8, "child":Lorg/w3c/dom/smil/ElementTime;
    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-static {v8, v0, v1, v2, v3}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->getTimeline(Lorg/w3c/dom/smil/ElementTime;DD)Ljava/util/List;

    move-result-object v9

    .line 191
    .local v9, "childTimeline":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;>;"
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 194
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide p1

    .line 188
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 198
    .end local v8    # "child":Lorg/w3c/dom/smil/ElementTime;
    .end local v9    # "childTimeline":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;>;"
    :cond_2
    sub-double v22, v12, v19

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 200
    .local v4, "activeChildrenAtEnd":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    :goto_2
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v14, v0, :cond_3

    .line 201
    new-instance v23, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    invoke-interface {v4, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    check-cast v22, Lorg/w3c/dom/smil/ElementTime;

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-direct {v0, v12, v13, v1, v2}, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 207
    :cond_3
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private static getTimeline(Lorg/w3c/dom/smil/ElementTime;DD)Ljava/util/List;
    .locals 13
    .param p0, "element"    # Lorg/w3c/dom/smil/ElementTime;
    .param p1, "offset"    # D
    .param p3, "maxOffset"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/ElementTime;",
            "DD)",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 215
    instance-of v11, p0, Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    if-eqz v11, :cond_0

    .line 216
    check-cast p0, Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    .end local p0    # "element":Lorg/w3c/dom/smil/ElementTime;
    invoke-static/range {p0 .. p4}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->getParTimeline(Lorg/w3c/dom/smil/ElementParallelTimeContainer;DD)Ljava/util/List;

    move-result-object v10

    .line 252
    :goto_0
    return-object v10

    .line 217
    .restart local p0    # "element":Lorg/w3c/dom/smil/ElementTime;
    :cond_0
    instance-of v11, p0, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    if-eqz v11, :cond_1

    .line 218
    check-cast p0, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    .end local p0    # "element":Lorg/w3c/dom/smil/ElementTime;
    invoke-static/range {p0 .. p4}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->getSeqTimeline(Lorg/w3c/dom/smil/ElementSequentialTimeContainer;DD)Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_0

    .line 221
    .restart local p0    # "element":Lorg/w3c/dom/smil/ElementTime;
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v10, "timeline":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;>;"
    invoke-interface {p0}, Lorg/w3c/dom/smil/ElementTime;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v1

    .line 225
    .local v1, "beginList":Lorg/w3c/dom/smil/TimeList;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v11

    if-ge v9, v11, :cond_3

    .line 226
    invoke-interface {v1, v9}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v0

    .line 227
    .local v0, "begin":Lorg/w3c/dom/smil/Time;
    invoke-interface {v0}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 228
    invoke-interface {v0}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v11

    add-double v2, v11, p1

    .line 229
    .local v2, "beginOffset":D
    cmpg-double v11, v2, p3

    if-gtz v11, :cond_2

    .line 230
    new-instance v8, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    const/4 v11, 0x0

    invoke-direct {v8, v2, v3, p0, v11}, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 232
    .local v8, "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .end local v2    # "beginOffset":D
    .end local v8    # "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 237
    .end local v0    # "begin":Lorg/w3c/dom/smil/Time;
    :cond_3
    invoke-interface {p0}, Lorg/w3c/dom/smil/ElementTime;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v5

    .line 238
    .local v5, "endList":Lorg/w3c/dom/smil/TimeList;
    const/4 v9, 0x0

    :goto_2
    invoke-interface {v5}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v11

    if-ge v9, v11, :cond_5

    .line 239
    invoke-interface {v5, v9}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v4

    .line 240
    .local v4, "end":Lorg/w3c/dom/smil/Time;
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 241
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v11

    add-double v6, v11, p1

    .line 242
    .local v6, "endOffset":D
    cmpg-double v11, v6, p3

    if-gtz v11, :cond_4

    .line 243
    new-instance v8, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    const/4 v11, 0x1

    invoke-direct {v8, v6, v7, p0, v11}, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 245
    .restart local v8    # "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    .end local v6    # "endOffset":D
    .end local v8    # "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 250
    .end local v4    # "end":Lorg/w3c/dom/smil/Time;
    :cond_5
    sget-object v11, Lcom/motorola/messaging/dom/smil/SmilPlayer;->sTimelineEntryComparator:Ljava/util/Comparator;

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private declared-synchronized isBeginOfSlide(Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;)Z
    .locals 3
    .param p1, "entry"    # Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    .prologue
    .line 423
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    .line 424
    const-string v0, "SmilPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBeginOfSlide, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v0

    instance-of v0, v0, Lcom/motorola/messaging/dom/smil/SmilParElementImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isNextAction()Z
    .locals 2

    .prologue
    .line 293
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAction:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;->NEXT:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isPauseAction()Z
    .locals 2

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAction:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;->PAUSE:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isPrevAction()Z
    .locals 2

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAction:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;->PREV:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isStartAction()Z
    .locals 2

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAction:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;->START:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isStopAction()Z
    .locals 2

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAction:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;->STOP:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadCurrentSlide()Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    .locals 5

    .prologue
    .line 742
    iget-object v1, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/List;

    iget v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentSlide:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    .line 743
    .local v0, "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    iget v1, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentSlide:I

    iput v1, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 744
    invoke-virtual {v0}, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L

    mul-double/2addr v1, v3

    double-to-long v1, v1

    iput-wide v1, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 745
    return-object v0
.end method

.method private loadNextSlide()Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    .locals 8

    .prologue
    const-wide v6, 0x408f400000000000L

    .line 697
    const/4 v2, 0x0

    .line 698
    .local v2, "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    iget-object v4, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/List;

    iget v5, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentSlide:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    .line 699
    .local v0, "currentSlideEntry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    iget-object v4, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mSlideEntries:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 703
    .local v1, "currentSlideNum":I
    if-lez v1, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->getNumOfSlides()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 705
    iget-object v4, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mSlideEntries:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    check-cast v2, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    .line 706
    .restart local v2    # "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    iget-object v4, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 707
    .local v3, "index":I
    iput v3, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 708
    iput v3, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentSlide:I

    .line 709
    invoke-virtual {v2}, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-long v4, v4

    iput-wide v4, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 720
    .end local v3    # "index":I
    :cond_0
    :goto_0
    return-object v2

    .line 712
    :cond_1
    iget v4, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentElement:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 713
    iget v4, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentElement:I

    iget-object v5, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 714
    iget-object v4, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/List;

    iget v5, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentElement:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    check-cast v2, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    .line 715
    .restart local v2    # "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    invoke-virtual {v2}, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-long v4, v4

    iput-wide v4, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentTime:J

    goto :goto_0
.end method

.method private loadPrevSlide()Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    .locals 8

    .prologue
    .line 724
    const/4 v2, 0x0

    .line 725
    .local v2, "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    iget-object v4, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/List;

    iget v5, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentSlide:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    .line 726
    .local v0, "currentSlideEntry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    iget-object v4, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mSlideEntries:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 730
    .local v1, "currentSlideNum":I
    if-lez v1, :cond_0

    .line 731
    iget-object v5, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mSlideEntries:Ljava/util/List;

    const/4 v4, 0x1

    if-le v1, v4, :cond_1

    add-int/lit8 v4, v1, -0x2

    :goto_0
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    check-cast v2, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    .line 732
    .restart local v2    # "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    iget-object v4, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 733
    .local v3, "index":I
    iput v3, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 734
    iput v3, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentSlide:I

    .line 735
    invoke-virtual {v2}, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L

    mul-double/2addr v4, v6

    double-to-long v4, v4

    iput-wide v4, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 738
    .end local v3    # "index":I
    :cond_0
    return-object v2

    .line 731
    :cond_1
    add-int/lit8 v4, v1, -0x1

    goto :goto_0
.end method

.method private declared-synchronized pauseActiveElements()V
    .locals 6

    .prologue
    .line 567
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 568
    iget-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 569
    .local v0, "element":Lorg/w3c/dom/smil/ElementTime;
    sget-boolean v2, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v2, :cond_0

    .line 570
    const-string v2, "SmilPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PAUSE]   at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->pauseElement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 575
    .end local v0    # "element":Lorg/w3c/dom/smil/ElementTime;
    :cond_1
    monitor-exit p0

    return-void

    .line 567
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized reloadActiveSlide()V
    .locals 6

    .prologue
    .line 432
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v3, :cond_0

    .line 433
    const-string v3, "SmilPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reloadActiveSlide, state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_0
    iget-object v3, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 437
    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->beginSmilDocument()V

    .line 446
    iget v3, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentSlide:I

    iget v4, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentElement:I

    if-ne v3, v4, :cond_2

    .line 447
    iget-object v3, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/List;

    iget v4, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentSlide:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    .line 448
    .local v0, "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    invoke-direct {p0, v0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->actionEntry(Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;)V

    .line 458
    .end local v0    # "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    :cond_1
    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->seekActiveMedia()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    monitor-exit p0

    return-void

    .line 451
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 452
    .local v2, "size":I
    iget v1, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentSlide:I

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentElement:I

    if-ge v1, v3, :cond_1

    if-ge v1, v2, :cond_1

    .line 453
    iget-object v3, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    .line 454
    .restart local v0    # "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    invoke-direct {p0, v0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->actionEntry(Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 432
    .end local v0    # "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized resumeActiveElements()V
    .locals 7

    .prologue
    .line 578
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 579
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 580
    iget-object v3, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 581
    .local v0, "element":Lorg/w3c/dom/smil/ElementTime;
    sget-boolean v3, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v3, :cond_0

    .line 582
    const-string v3, "SmilPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[RESUME]   at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->resumeElement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 587
    .end local v0    # "element":Lorg/w3c/dom/smil/ElementTime;
    :cond_1
    monitor-exit p0

    return-void

    .line 578
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized seekActiveMedia()V
    .locals 8

    .prologue
    .line 477
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 478
    iget-object v4, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 479
    .local v0, "element":Lorg/w3c/dom/smil/ElementTime;
    instance-of v4, v0, Lcom/motorola/messaging/dom/smil/SmilParElementImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 491
    .end local v0    # "element":Lorg/w3c/dom/smil/ElementTime;
    :cond_0
    monitor-exit p0

    return-void

    .line 482
    .restart local v0    # "element":Lorg/w3c/dom/smil/ElementTime;
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->getOffsetTime(Lorg/w3c/dom/smil/ElementTime;)D

    move-result-wide v2

    .line 483
    .local v2, "offset":D
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_3

    iget-wide v4, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentTime:J

    long-to-double v4, v4

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_3

    .line 484
    sget-boolean v4, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v4, :cond_2

    .line 485
    const-string v4, "SmilPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SEEK]   at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :cond_2
    iget-wide v4, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentTime:J

    long-to-double v4, v4

    sub-double/2addr v4, v2

    double-to-float v4, v4

    invoke-interface {v0, v4}, Lorg/w3c/dom/smil/ElementTime;->seekElement(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0    # "element":Lorg/w3c/dom/smil/ElementTime;
    .end local v1    # "i":I
    .end local v2    # "offset":D
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private stopCurrentSlide()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 676
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 677
    .local v3, "skippedEntries":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;>;"
    iget-object v5, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 678
    .local v4, "totalEntries":I
    iget v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentElement:I

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 681
    iget-object v5, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    .line 682
    .local v1, "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    invoke-virtual {v1}, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;->getAction()I

    move-result v0

    .line 683
    .local v0, "action":I
    invoke-virtual {v1}, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v5

    instance-of v5, v5, Lcom/motorola/messaging/dom/smil/SmilParElementImpl;

    if-eqz v5, :cond_1

    if-ne v0, v6, :cond_1

    .line 685
    invoke-direct {p0, v1}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->actionEntry(Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;)V

    .line 686
    iput v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 694
    .end local v0    # "action":I
    .end local v1    # "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    :cond_0
    return-void

    .line 688
    .restart local v0    # "action":I
    .restart local v1    # "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    :cond_1
    if-ne v0, v6, :cond_3

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 689
    invoke-direct {p0, v1}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->actionEntry(Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;)V

    .line 678
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 690
    :cond_3
    if-nez v0, :cond_2

    .line 691
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private declared-synchronized waitForEntry(J)V
    .locals 11
    .param p1, "interval"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v9, 0xc8

    .line 496
    monitor-enter p0

    :try_start_0
    sget-boolean v6, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v6, :cond_0

    .line 497
    const-string v6, "SmilPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Waiting for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :cond_0
    const-wide/16 v0, 0x0

    .line 502
    .local v0, "overhead":J
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-lez v6, :cond_1

    .line 503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 504
    .local v4, "startAt":J
    const-wide/16 v6, 0xc8

    invoke-static {p1, p2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 505
    .local v2, "sleep":J
    cmp-long v6, v0, v2

    if-gez v6, :cond_2

    .line 506
    sub-long v6, v2, v0

    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 507
    iget-wide v6, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentTime:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 513
    :goto_1
    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isStopAction()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isPauseAction()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isNextAction()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isPrevAction()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_3

    .line 522
    .end local v2    # "sleep":J
    .end local v4    # "startAt":J
    :cond_1
    monitor-exit p0

    return-void

    .line 509
    .restart local v2    # "sleep":J
    .restart local v4    # "startAt":J
    :cond_2
    const-wide/16 v2, 0x0

    .line 510
    :try_start_1
    iget-wide v6, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentTime:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 496
    .end local v0    # "overhead":J
    .end local v2    # "sleep":J
    .end local v4    # "startAt":J
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 517
    .restart local v0    # "overhead":J
    .restart local v2    # "sleep":J
    .restart local v4    # "startAt":J
    :cond_3
    :try_start_2
    iget-object v6, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mRoot:Lorg/w3c/dom/smil/ElementTime;

    check-cast v6, Lorg/w3c/dom/events/EventTarget;

    iget-object v7, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mMediaTimeUpdatedEvent:Lorg/w3c/dom/events/Event;

    invoke-interface {v6, v7}, Lorg/w3c/dom/events/EventTarget;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 519
    sub-long/2addr p1, v9

    .line 520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v6

    sub-long/2addr v6, v4

    sub-long v0, v6, v2

    .line 521
    goto :goto_0
.end method

.method private waitForState(Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;)Z
    .locals 5
    .param p1, "state"    # Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    .prologue
    .line 316
    iget-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mPlayerThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 318
    const/4 v1, 0x0

    .line 319
    .local v1, "totalTime":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    if-eq v2, p1, :cond_0

    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_0

    .line 320
    const-wide/16 v2, 0x14

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    add-int/lit8 v1, v1, 0x14

    goto :goto_0

    .line 324
    :catch_0
    move-exception v2

    .line 329
    .end local v1    # "totalTime":I
    :cond_0
    iget-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    if-ne p1, v2, :cond_2

    const/4 v0, 0x1

    .line 330
    .local v0, "result":Z
    :goto_1
    sget-boolean v2, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v2, :cond_1

    .line 331
    const-string v2, "SmilPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waitForState result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_1
    return v0

    .line 329
    .end local v0    # "result":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private declared-synchronized waitForWakeUp()V
    .locals 4

    .prologue
    .line 590
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    .line 591
    const-string v1, "SmilPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitForWakeUp, state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    :cond_0
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isStartAction()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isStopAction()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isNextAction()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isPrevAction()Z

    move-result v1

    if-nez v1, :cond_3

    .line 596
    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "SmilPlayer"

    const-string v2, "Unexpected InterruptedException."

    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 606
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :goto_1
    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_2

    .line 607
    const-string v1, "SmilPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitForWakeUp OUT, state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 609
    :cond_2
    monitor-exit p0

    return-void

    .line 598
    :cond_3
    :try_start_3
    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isStartAction()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 599
    sget-object v1, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v1, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAction:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 600
    sget-object v1, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;->PLAYING:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v1, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 590
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized getCurrentPosition()I
    .locals 2

    .prologue
    .line 532
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v0, v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentSlide()I
    .locals 4

    .prologue
    .line 540
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/List;

    iget v3, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentSlide:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    .line 541
    .local v0, "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    iget-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mSlideEntries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 544
    .local v1, "slideNum":I
    if-lez v1, :cond_0

    .end local v1    # "slideNum":I
    :goto_0
    monitor-exit p0

    return v1

    .restart local v1    # "slideNum":I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 540
    .end local v0    # "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    .end local v1    # "slideNum":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getCurrentState()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 548
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 549
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "current_time"

    iget-wide v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 550
    const-string v1, "current_slide"

    iget v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentSlide:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 551
    const-string v1, "current_element"

    iget v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentElement:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    monitor-exit p0

    return-object v0

    .line 548
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getDuration()I
    .locals 2

    .prologue
    .line 525
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/List;

    iget-object v1, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    # getter for: Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;->mOffsetTime:D
    invoke-static {v0}, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;->access$000(Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 528
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 525
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumOfSlides()I
    .locals 1

    .prologue
    .line 536
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mSlideEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Lorg/w3c/dom/smil/ElementTime;)V
    .locals 7
    .param p1, "root"    # Lorg/w3c/dom/smil/ElementTime;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 301
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mRoot:Lorg/w3c/dom/smil/ElementTime;

    .line 302
    iget-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mRoot:Lorg/w3c/dom/smil/ElementTime;

    const-wide/16 v3, 0x0

    const-wide v5, 0x7fefffffffffffffL

    invoke-static {v2, v3, v4, v5, v6}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->getTimeline(Lorg/w3c/dom/smil/ElementTime;DD)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/List;

    .line 303
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mSlideEntries:Ljava/util/List;

    .line 304
    iget-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    .line 305
    .local v0, "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    invoke-direct {p0, v0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isBeginOfSlide(Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mSlideEntries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 301
    .end local v0    # "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 309
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mRoot:Lorg/w3c/dom/smil/ElementTime;

    check-cast v2, Lorg/w3c/dom/events/DocumentEvent;

    const-string v3, "Event"

    invoke-interface {v2, v3}, Lorg/w3c/dom/events/DocumentEvent;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mMediaTimeUpdatedEvent:Lorg/w3c/dom/events/Event;

    .line 310
    iget-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mMediaTimeUpdatedEvent:Lorg/w3c/dom/events/Event;

    const-string v3, "mediaTimeUpdated"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lorg/w3c/dom/events/Event;->initEvent(Ljava/lang/String;ZZ)V

    .line 311
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized isPausedState()Z
    .locals 2

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v1, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;->PAUSED:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPlayedState()Z
    .locals 2

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v1, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;->PLAYED:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPlayingState()Z
    .locals 2

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v1, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;->PLAYING:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isStoppedState()Z
    .locals 2

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v1, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;->STOPPED:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized next()V
    .locals 1

    .prologue
    .line 662
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    :cond_0
    sget-object v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;->NEXT:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAction:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 664
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    :cond_1
    monitor-exit p0

    return-void

    .line 662
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .locals 3

    .prologue
    .line 381
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    .line 382
    const-string v0, "SmilPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    sget-object v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;->PAUSE:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAction:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 387
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :goto_0
    monitor-exit p0

    return-void

    .line 389
    :cond_1
    :try_start_1
    const-string v0, "SmilPlayer"

    const-string v1, "Error State: Playback is not playing!"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized play()V
    .locals 3

    .prologue
    .line 337
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    .line 338
    const-string v0, "SmilPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    const-string v0, "SmilPlayer"

    const-string v1, "play was called but there is already a thread executing SmilPlayer"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->stop()V

    .line 344
    sget-object v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;->STOPPED:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    invoke-direct {p0, v0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->waitForState(Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;)Z

    .line 347
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_2

    .line 348
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 349
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 350
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentSlide:I

    .line 351
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mPlayerThread:Ljava/lang/Thread;

    .line 352
    sget-object v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;->PLAYING:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    .line 353
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mPlayerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    :goto_0
    monitor-exit p0

    return-void

    .line 356
    :cond_2
    :try_start_1
    const-string v0, "SmilPlayer"

    const-string v1, "Error State: Playback is playing!"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized playOrRestore(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 361
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 362
    :try_start_0
    const-string v0, "current_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 363
    const-string v0, "current_slide"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentSlide:I

    .line 364
    const-string v0, "current_element"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 365
    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->reloadActiveSlide()V

    .line 366
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->actionPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 371
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mPlayerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 372
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->stop()V

    .line 373
    sget-object v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;->STOPPED:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    invoke-direct {p0, v0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->waitForState(Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;)Z

    .line 375
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prev()V
    .locals 1

    .prologue
    .line 669
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    :cond_0
    sget-object v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;->PREV:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAction:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 671
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    :cond_1
    monitor-exit p0

    return-void

    .line 669
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 15

    .prologue
    const-wide v13, 0x408f400000000000L

    .line 764
    sget-boolean v9, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v9, :cond_0

    .line 765
    const-string v9, "SmilPlayer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "run, state="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isStoppedState()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 769
    sget-boolean v9, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v9, :cond_1

    .line 770
    const-string v9, "SmilPlayer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "run - OUT (isStoppedState), state="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    :cond_1
    :goto_0
    return-void

    .line 776
    :cond_2
    iget-object v9, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 777
    .local v7, "size":I
    :goto_1
    iget v9, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentElement:I

    if-ge v9, v7, :cond_10

    .line 778
    iget-object v9, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/List;

    iget v10, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentElement:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    .line 779
    .local v3, "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    invoke-direct {p0, v3}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isBeginOfSlide(Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 780
    iget v9, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentElement:I

    iput v9, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentSlide:I

    .line 782
    :cond_3
    invoke-virtual {v3}, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v9

    mul-double/2addr v9, v13

    double-to-long v5, v9

    .line 783
    .local v5, "offset":J
    :cond_4
    iget-wide v9, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentTime:J

    cmp-long v9, v5, v9

    if-lez v9, :cond_f

    .line 785
    :try_start_0
    iget-wide v9, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentTime:J

    sub-long v9, v5, v9

    invoke-direct {p0, v9, v10}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->waitForEntry(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isPauseAction()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isStopAction()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isNextAction()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isPrevAction()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 791
    :cond_6
    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isPauseAction()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 792
    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->actionPause()V

    .line 793
    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->waitForWakeUp()V

    .line 796
    :cond_7
    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isStopAction()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 797
    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->actionStop()V

    .line 798
    sget-boolean v9, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v9, :cond_1

    .line 799
    const-string v9, "SmilPlayer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "run - OUT (isStopAction), state="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 786
    :catch_0
    move-exception v2

    .line 787
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v9, "SmilPlayer"

    const-string v10, "Unexpected InterruptedException."

    invoke-static {v9, v10, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 804
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_8
    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isNextAction()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 805
    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->actionNext()Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    move-result-object v4

    .line 806
    .local v4, "nextEntry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    if-eqz v4, :cond_9

    .line 807
    move-object v3, v4

    .line 809
    :cond_9
    iget-object v9, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v10, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;->PAUSED:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    if-ne v9, v10, :cond_c

    .line 810
    sget-object v9, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;->PAUSE:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v9, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAction:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 811
    invoke-direct {p0, v3}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->actionEntry(Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;)V

    .line 815
    :goto_3
    iget-wide v5, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 818
    .end local v4    # "nextEntry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    :cond_a
    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isPrevAction()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 819
    iget-object v9, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/List;

    iget v10, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentSlide:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    .line 820
    .local v8, "tempEntry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    invoke-virtual {v8}, Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v9

    mul-double/2addr v9, v13

    double-to-long v0, v9

    .line 824
    .local v0, "baseTime":J
    iget-wide v9, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentTime:J

    sub-long/2addr v9, v0

    const-wide/16 v11, 0xbb8

    cmp-long v9, v9, v11

    if-gez v9, :cond_d

    const-wide/16 v9, 0x0

    cmp-long v9, v0, v9

    if-eqz v9, :cond_d

    .line 825
    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->actionPrev()Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    move-result-object v8

    .line 830
    :goto_4
    if-eqz v8, :cond_b

    .line 831
    move-object v3, v8

    .line 833
    :cond_b
    iget-object v9, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v10, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;->PAUSED:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    if-ne v9, v10, :cond_e

    .line 834
    sget-object v9, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;->PAUSE:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v9, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAction:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 835
    invoke-direct {p0, v3}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->actionEntry(Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;)V

    .line 839
    :goto_5
    iget-wide v5, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 840
    goto/16 :goto_2

    .line 813
    .end local v0    # "baseTime":J
    .end local v8    # "tempEntry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    .restart local v4    # "nextEntry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    :cond_c
    sget-object v9, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v9, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAction:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

    goto :goto_3

    .line 827
    .end local v4    # "nextEntry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    .restart local v0    # "baseTime":J
    .restart local v8    # "tempEntry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    :cond_d
    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->actionRestart()Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;

    move-result-object v8

    goto :goto_4

    .line 837
    :cond_e
    sget-object v9, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v9, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAction:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

    goto :goto_5

    .line 843
    .end local v0    # "baseTime":J
    .end local v8    # "tempEntry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    :cond_f
    iput-wide v5, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 844
    invoke-direct {p0, v3}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->actionEntry(Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;)V

    .line 777
    iget v9, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentElement:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mCurrentElement:I

    goto/16 :goto_1

    .line 847
    .end local v3    # "entry":Lcom/motorola/messaging/dom/smil/SmilPlayer$TimelineEntry;
    .end local v5    # "offset":J
    :cond_10
    sget-object v9, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;->PLAYED:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v9, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    .line 848
    sget-boolean v9, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v9, :cond_1

    .line 849
    const-string v9, "SmilPlayer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "run - OUT, state="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public declared-synchronized start()V
    .locals 3

    .prologue
    .line 394
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    .line 395
    const-string v0, "SmilPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->resumeActiveElements()V

    .line 400
    sget-object v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;->START:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAction:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 401
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :goto_0
    monitor-exit p0

    return-void

    .line 402
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 405
    :cond_2
    :try_start_2
    const-string v0, "SmilPlayer"

    const-string v1, "Error State: Playback can not be started!"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized stop()V
    .locals 3

    .prologue
    .line 410
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    .line 411
    const-string v0, "SmilPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mState:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 415
    :cond_1
    sget-object v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;->STOP:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilPlayer;->mAction:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 416
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 417
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 418
    invoke-direct {p0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->actionStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
