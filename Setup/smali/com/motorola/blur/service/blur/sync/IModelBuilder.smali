.class public interface abstract Lcom/motorola/blur/service/blur/sync/IModelBuilder;
.super Ljava/lang/Object;
.source "IModelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/motorola/blur/service/blur/sync/IBlurDataModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract build(Lcom/google/protobuf/Message;)Lcom/motorola/blur/service/blur/sync/IBlurDataModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Message;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/blur/service/blur/sync/TransformerException;
        }
    .end annotation
.end method
