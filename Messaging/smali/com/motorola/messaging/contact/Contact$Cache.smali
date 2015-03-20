.class Lcom/motorola/messaging/contact/Contact$Cache;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/contact/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# static fields
.field private static sInstance:Lcom/motorola/messaging/contact/Contact$Cache;


# instance fields
.field private final mCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/contact/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 726
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/contact/Contact$Cache;->mCache:Ljava/util/List;

    .line 727
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/contact/Contact$Cache;->mContext:Landroid/content/Context;

    .line 728
    return-void
.end method

.method static addContact(Ljava/lang/String;)Lcom/motorola/messaging/contact/Contact;
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 789
    new-instance v0, Lcom/motorola/messaging/contact/Contact;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/messaging/contact/Contact;-><init>(Ljava/lang/String;Lcom/motorola/messaging/contact/Contact$1;)V

    .line 790
    .local v0, "contact":Lcom/motorola/messaging/contact/Contact;
    sget-object v2, Lcom/motorola/messaging/contact/Contact$Cache;->sInstance:Lcom/motorola/messaging/contact/Contact$Cache;

    monitor-enter v2

    .line 791
    :try_start_0
    sget-object v1, Lcom/motorola/messaging/contact/Contact$Cache;->sInstance:Lcom/motorola/messaging/contact/Contact$Cache;

    iget-object v1, v1, Lcom/motorola/messaging/contact/Contact$Cache;->mCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    monitor-exit v2

    .line 793
    return-object v0

    .line 792
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getContact(Ljava/lang/String;Z)Lcom/motorola/messaging/contact/Contact;
    .locals 7
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "useStrictComparison"    # Z

    .prologue
    .line 750
    const/4 v1, 0x0

    .line 752
    .local v1, "contact":Lcom/motorola/messaging/contact/Contact;
    sget-object v4, Lcom/motorola/messaging/contact/Contact$Cache;->sInstance:Lcom/motorola/messaging/contact/Contact$Cache;

    monitor-enter v4

    .line 753
    :try_start_0
    invoke-static {p0}, Lcom/motorola/messaging/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/motorola/messaging/contact/ContactUtils;->isMessagableNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 755
    :cond_0
    sget-object v3, Lcom/motorola/messaging/contact/Contact$Cache;->sInstance:Lcom/motorola/messaging/contact/Contact$Cache;

    iget-object v3, v3, Lcom/motorola/messaging/contact/Contact$Cache;->mCache:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/contact/Contact;

    .line 756
    .local v0, "c":Lcom/motorola/messaging/contact/Contact;
    # getter for: Lcom/motorola/messaging/contact/Contact;->mAddress:Ljava/lang/String;
    invoke-static {v0}, Lcom/motorola/messaging/contact/Contact;->access$200(Lcom/motorola/messaging/contact/Contact;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 757
    move-object v1, v0

    .line 784
    .end local v0    # "c":Lcom/motorola/messaging/contact/Contact;
    :cond_2
    :goto_0
    monitor-exit v4

    .line 785
    return-object v1

    .line 764
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 766
    sget-object v3, Lcom/motorola/messaging/contact/Contact$Cache;->sInstance:Lcom/motorola/messaging/contact/Contact$Cache;

    iget-object v3, v3, Lcom/motorola/messaging/contact/Contact$Cache;->mCache:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/contact/Contact;

    .line 769
    .restart local v0    # "c":Lcom/motorola/messaging/contact/Contact;
    # getter for: Lcom/motorola/messaging/contact/Contact;->mAddress:Ljava/lang/String;
    invoke-static {v0}, Lcom/motorola/messaging/contact/Contact;->access$200(Lcom/motorola/messaging/contact/Contact;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 771
    move-object v1, v0

    .line 772
    goto :goto_0

    .line 773
    :cond_5
    if-nez p1, :cond_4

    # getter for: Lcom/motorola/messaging/contact/Contact;->mAddress:Ljava/lang/String;
    invoke-static {v0}, Lcom/motorola/messaging/contact/Contact;->access$200(Lcom/motorola/messaging/contact/Contact;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 774
    if-eqz v1, :cond_6

    .line 775
    # getter for: Lcom/motorola/messaging/contact/Contact;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/contact/Contact;->access$300()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 776
    const-string v3, "Contact"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Contact cache is ambiguous for address "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    :cond_6
    move-object v1, v0

    goto :goto_1

    .line 784
    .end local v0    # "c":Lcom/motorola/messaging/contact/Contact;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 735
    sget-object v0, Lcom/motorola/messaging/contact/Contact$Cache;->sInstance:Lcom/motorola/messaging/contact/Contact$Cache;

    iget-object v0, v0, Lcom/motorola/messaging/contact/Contact$Cache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 731
    new-instance v0, Lcom/motorola/messaging/contact/Contact$Cache;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/contact/Contact$Cache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/messaging/contact/Contact$Cache;->sInstance:Lcom/motorola/messaging/contact/Contact$Cache;

    .line 732
    return-void
.end method

.method static invalidate()V
    .locals 4

    .prologue
    .line 799
    sget-object v3, Lcom/motorola/messaging/contact/Contact$Cache;->sInstance:Lcom/motorola/messaging/contact/Contact$Cache;

    monitor-enter v3

    .line 800
    :try_start_0
    sget-object v2, Lcom/motorola/messaging/contact/Contact$Cache;->sInstance:Lcom/motorola/messaging/contact/Contact$Cache;

    iget-object v2, v2, Lcom/motorola/messaging/contact/Contact$Cache;->mCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/contact/Contact;

    .line 801
    .local v0, "c":Lcom/motorola/messaging/contact/Contact;
    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->invalidate()V

    goto :goto_0

    .line 803
    .end local v0    # "c":Lcom/motorola/messaging/contact/Contact;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 804
    return-void
.end method
