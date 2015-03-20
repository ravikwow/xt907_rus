.class Lcom/motorola/messaging/contact/Contact$FetchContactRequest;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Lcom/motorola/messaging/concurrent/TaskStack$TaskRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/contact/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FetchContactRequest"
.end annotation


# instance fields
.field private mId:Ljava/lang/String;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 817
    iput-object p1, p0, Lcom/motorola/messaging/contact/Contact$FetchContactRequest;->mRunnable:Ljava/lang/Runnable;

    .line 818
    iput-object p2, p0, Lcom/motorola/messaging/contact/Contact$FetchContactRequest;->mId:Ljava/lang/String;

    .line 819
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/motorola/messaging/contact/Contact$FetchContactRequest;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/motorola/messaging/contact/Contact$FetchContactRequest;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method
