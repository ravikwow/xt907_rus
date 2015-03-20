.class final Lcom/motorola/blur/service/apps/emailverification/appID/protocol/EmailverificationAppIDProtocol$1;
.super Ljava/lang/Object;
.source "EmailverificationAppIDProtocol.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/emailverification/appID/protocol/EmailverificationAppIDProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;
    .locals 1
    .param p1, "root"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 94
    # setter for: Lcom/motorola/blur/service/apps/emailverification/appID/protocol/EmailverificationAppIDProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;
    invoke-static {p1}, Lcom/motorola/blur/service/apps/emailverification/appID/protocol/EmailverificationAppIDProtocol;->access$002(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method
