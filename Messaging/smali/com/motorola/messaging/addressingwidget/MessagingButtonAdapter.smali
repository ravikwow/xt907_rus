.class public Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;
.super Lcom/motorola/messaging/addressingwidget/ButtonAdapter;
.source "MessagingButtonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$onCapacityExceededListener;,
        Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;,
        Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;
    }
.end annotation


# static fields
.field private static final LOCAL_LOG:Z


# instance fields
.field private mAdapters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mAddButtonsTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private mButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;",
            ">;"
        }
    .end annotation
.end field

.field private mCapacity:I

.field private mCapacityListener:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$onCapacityExceededListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->LOCAL_LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityHandler"    # Landroid/os/Handler;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/ButtonAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mButtons:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mAddButtonsTaskList:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mAdapters:Ljava/util/Set;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;Lcom/motorola/messaging/contact/Contact;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;
    .param p1, "x1"    # Lcom/motorola/messaging/contact/Contact;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->addButton(Lcom/motorola/messaging/contact/Contact;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;)Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$onCapacityExceededListener;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mCapacityListener:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$onCapacityExceededListener;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->LOCAL_LOG:Z

    return v0
.end method

.method private add(Ljava/util/List;Z)V
    .locals 2
    .param p2, "isSuggested"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, "addressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    new-instance v0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;-><init>(Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;Ljava/util/List;Z)V

    .line 440
    .local v0, "task":Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
    const-string v1, "add_address_list_to_widget"

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->execute(Ljava/lang/String;)V

    .line 441
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mAddButtonsTaskList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private declared-synchronized addButton(Lcom/motorola/messaging/contact/Contact;Ljava/lang/String;Z)Z
    .locals 8
    .param p1, "c"    # Lcom/motorola/messaging/contact/Contact;
    .param p2, "suggestedAddress"    # Ljava/lang/String;
    .param p3, "isSuggested"    # Z

    .prologue
    const/4 v3, 0x1

    .line 135
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->existsInDatabase()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 136
    iget-object v4, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;

    .line 137
    .local v1, "button":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->getContactId()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 138
    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->hasAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 160
    .end local v1    # "button":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    monitor-exit p0

    return v3

    .line 142
    .restart local v1    # "button":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->isCapacityFull()Z

    move-result v4

    if-nez v4, :cond_0

    .line 144
    invoke-virtual {v1, p1, p2, p3}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->addInfo(Lcom/motorola/messaging/contact/Contact;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    .end local v1    # "button":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 150
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "address":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->findButton(Ljava/lang/String;)Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;

    move-result-object v4

    if-nez v4, :cond_1

    .line 156
    .end local v0    # "address":Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->isCapacityFull()Z

    move-result v4

    if-nez v4, :cond_5

    .line 157
    iget-object v4, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mButtons:Ljava/util/List;

    new-instance v5, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;

    iget-object v6, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, p1, p2, p3}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;-><init>(Landroid/content/Context;Lcom/motorola/messaging/contact/Contact;Ljava/lang/String;Z)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 160
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private findButton(Ljava/lang/String;)Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 406
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;

    .line 407
    .local v0, "button":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    invoke-virtual {v0, p1}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->hasAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 411
    .end local v0    # "button":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNumberOfAddresses()I
    .locals 4

    .prologue
    .line 80
    const/4 v2, 0x0

    .line 81
    .local v2, "numberOfAddresses":I
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;

    .line 82
    .local v0, "button":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->getNumberOfAddresses()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 87
    .end local v0    # "button":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    :cond_1
    return v2
.end method

.method private isCapacityFull()Z
    .locals 2

    .prologue
    .line 164
    iget v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mCapacity:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->getNumberOfAddresses()I

    move-result v0

    iget v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mCapacity:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/motorola/messaging/contact/ContactList;)V
    .locals 2
    .param p1, "contactList"    # Lcom/motorola/messaging/contact/ContactList;

    .prologue
    .line 449
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    new-instance v0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;

    invoke-direct {v0, p0, p1}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;-><init>(Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;Lcom/motorola/messaging/contact/ContactList;)V

    .line 453
    .local v0, "task":Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
    const-string v1, "add_contact_list_to_widget"

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->execute(Ljava/lang/String;)V

    .line 454
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mAddButtonsTaskList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public add(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 432
    .local p1, "addressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->add(Ljava/util/List;Z)V

    .line 433
    return-void
.end method

.method public addAdapter(Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    return-void
.end method

.method public getAddresses()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;

    .line 246
    .local v1, "button":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    invoke-virtual {v1}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    invoke-virtual {v1}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->getAddresses()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 251
    .end local v1    # "button":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    :cond_1
    return-object v0
.end method

.method public getButtonLabel(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;

    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getButtonPicture(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 904
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;

    # getter for: Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mAvatar:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->access$400(Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 172
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 173
    :cond_0
    const/4 v0, 0x0

    .line 176
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 180
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 181
    :cond_0
    const-wide/16 v0, -0x1

    .line 183
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;

    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->getId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getLargestEmail()Ljava/lang/String;
    .locals 5

    .prologue
    .line 204
    const/4 v2, 0x0

    .line 205
    .local v2, "largestEmail":Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;

    .line 206
    .local v0, "button":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->hasEmail()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->getLargestEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 207
    :cond_1
    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->getLargestEmail()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 210
    .end local v0    # "button":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    :cond_2
    return-object v2
.end method

.method public getShortCodes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v2, "shortCodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;

    .line 293
    .local v0, "button":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->hasShortCode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 296
    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->getAddresses()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 299
    .end local v0    # "button":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    :cond_1
    return-object v2
.end method

.method public hasEmail()Z
    .locals 3

    .prologue
    .line 191
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;

    .line 192
    .local v0, "button":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->hasEmail()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    const/4 v2, 0x1

    .line 196
    .end local v0    # "button":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasInvalidAddresses()Z
    .locals 3

    .prologue
    .line 231
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;

    .line 232
    .local v0, "button":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    const/4 v2, 0x1

    .line 236
    .end local v0    # "button":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasOnlineAlbumAddress()Z
    .locals 3

    .prologue
    .line 282
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;

    .line 283
    .local v0, "button":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->hasOnlineAlbumAddress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    const/4 v2, 0x1

    .line 287
    .end local v0    # "button":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasValidAddresses()Z
    .locals 3

    .prologue
    .line 218
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;

    .line 219
    .local v0, "button":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    const/4 v2, 0x1

    .line 223
    .end local v0    # "button":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isValid(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;

    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->isValid()Z

    move-result v0

    return v0
.end method

.method public onButtonDeleted(Ljava/lang/Object;)V
    .locals 1
    .param p1, "tagObject"    # Ljava/lang/Object;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 99
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 101
    :cond_0
    return-void
.end method

.method public onTextReady(Ljava/util/List;I)V
    .locals 6
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "addressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const/4 v3, 0x0

    .line 113
    .local v3, "isSuggested":Z
    if-ltz p2, :cond_3

    .line 114
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 115
    .local v1, "encodedString":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 116
    iget-object v5, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;

    .line 117
    .local v0, "adapter":Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;
    invoke-virtual {v0, v1, p2}, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;->getParser(Ljava/lang/String;I)Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;

    move-result-object v4

    .line 118
    .local v4, "parser":Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;
    if-eqz v4, :cond_2

    .line 122
    invoke-virtual {v4}, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->isGroup()Z

    move-result v5

    if-nez v5, :cond_3

    .line 123
    invoke-virtual {v4}, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v0    # "adapter":Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter;
    .end local v1    # "encodedString":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "parser":Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;
    :cond_3
    invoke-direct {p0, p1, v3}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->add(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public resolveButtons()V
    .locals 4

    .prologue
    .line 306
    sget-boolean v2, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 307
    const-string v2, "MessagingButtonAdapter"

    const-string v3, "About to resolve buttons"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_0
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mAddButtonsTaskList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;

    .line 310
    .local v1, "task":Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
    invoke-virtual {v1}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->blockUntilFinish()V

    goto :goto_0

    .line 312
    .end local v1    # "task":Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
    :cond_1
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mAddButtonsTaskList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 313
    return-void
.end method

.method public setAddressesCapacity(ILcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$onCapacityExceededListener;)V
    .locals 0
    .param p1, "capacity"    # I
    .param p2, "listener"    # Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$onCapacityExceededListener;

    .prologue
    .line 70
    iput p1, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mCapacity:I

    .line 71
    iput-object p2, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mCapacityListener:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$onCapacityExceededListener;

    .line 72
    return-void
.end method

.method public updateButton(JLjava/util/Set;)V
    .locals 10
    .param p1, "buttonId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p3, "selectedAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 322
    .local v3, "buttonToUpdate":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    iget-object v8, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;

    .line 323
    .local v2, "button":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    invoke-virtual {v2}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->getId()J

    move-result-wide v8

    cmp-long v8, v8, p1

    if-nez v8, :cond_0

    .line 324
    move-object v3, v2

    .line 328
    .end local v2    # "button":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    :cond_1
    if-eqz v3, :cond_4

    .line 329
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 331
    .local v1, "addressesToIgnore":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 332
    .local v0, "address":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->findButton(Ljava/lang/String;)Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;

    move-result-object v4

    .line 333
    .local v4, "existentButton":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    if-eqz v4, :cond_2

    if-eq v4, v3, :cond_2

    .line 334
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 337
    .end local v0    # "address":Ljava/lang/String;
    .end local v4    # "existentButton":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    :cond_3
    invoke-interface {p3, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 342
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 343
    invoke-virtual {p0, v3}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->onButtonDeleted(Ljava/lang/Object;)V

    .line 362
    .end local v1    # "addressesToIgnore":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    :goto_1
    return-void

    .line 344
    .restart local v1    # "addressesToIgnore":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    const-wide/16 v8, -0xa

    cmp-long v8, p1, v8

    if-eqz v8, :cond_4

    .line 347
    iget v8, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mCapacity:I

    if-lez v8, :cond_6

    .line 348
    iget v8, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mCapacity:I

    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->getNumberOfAddresses()I

    move-result v9

    sub-int v7, v8, v9

    .line 349
    .local v7, "remainingCapacity":I
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v3}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->getNumberOfAddresses()I

    move-result v9

    sub-int v5, v8, v9

    .line 350
    .local v5, "extraAddresses":I
    if-le v5, v7, :cond_6

    .line 351
    iget-object v8, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mCapacityListener:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$onCapacityExceededListener;

    if-eqz v8, :cond_4

    .line 352
    iget-object v8, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mCapacityListener:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$onCapacityExceededListener;

    invoke-interface {v8}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$onCapacityExceededListener;->onCapacityExceeded()V

    goto :goto_1

    .line 357
    .end local v5    # "extraAddresses":I
    .end local v7    # "remainingCapacity":I
    :cond_6
    invoke-virtual {v3, p3}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->updateAddresses(Ljava/util/Set;)V

    .line 358
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 359
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method public updateButton(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "oldAddress"    # Ljava/lang/String;
    .param p2, "newAddress"    # Ljava/lang/String;

    .prologue
    .line 370
    invoke-static {p1}, Lcom/motorola/messaging/contact/ContactUtils;->getUnformattedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 371
    invoke-static {p2}, Lcom/motorola/messaging/contact/ContactUtils;->getUnformattedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 372
    .local v4, "finalNewAddress":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->findButton(Ljava/lang/String;)Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;

    move-result-object v6

    .line 373
    .local v6, "buttonToUpdate":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    if-eqz v6, :cond_1

    .line 374
    invoke-direct {p0, v4}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->findButton(Ljava/lang/String;)Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;

    move-result-object v7

    .line 375
    .local v7, "existentButton":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v7, :cond_2

    if-eq v7, v6, :cond_2

    .line 377
    :cond_0
    invoke-virtual {p0, v6}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->onButtonDeleted(Ljava/lang/Object;)V

    .line 403
    .end local v7    # "existentButton":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    :cond_1
    :goto_0
    return-void

    .line 379
    .restart local v7    # "existentButton":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    :cond_2
    move-object v5, v6

    .line 381
    .local v5, "finalButton":Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
    new-instance v0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$1;

    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$1;-><init>(Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;Landroid/os/Handler;ILjava/lang/String;Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;)V

    .line 400
    .local v0, "task":Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
    const-string v1, "update_button"

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->execute(Ljava/lang/String;)V

    goto :goto_0
.end method
