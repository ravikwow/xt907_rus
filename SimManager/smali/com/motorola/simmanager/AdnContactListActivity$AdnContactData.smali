.class Lcom/motorola/simmanager/AdnContactListActivity$AdnContactData;
.super Ljava/lang/Object;
.source "AdnContactListActivity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/simmanager/AdnContactListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdnContactData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/motorola/simmanager/AdnContactListActivity$AdnContactData;",
        ">;"
    }
.end annotation


# instance fields
.field data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/motorola/simmanager/AdnContactListActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/simmanager/AdnContactListActivity;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/motorola/simmanager/AdnContactListActivity$AdnContactData;->this$0:Lcom/motorola/simmanager/AdnContactListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p2, p0, Lcom/motorola/simmanager/AdnContactListActivity$AdnContactData;->name:Ljava/lang/String;

    .line 279
    iput-object p3, p0, Lcom/motorola/simmanager/AdnContactListActivity$AdnContactData;->data:Ljava/util/ArrayList;

    .line 280
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/motorola/simmanager/AdnContactListActivity$AdnContactData;)I
    .locals 2
    .param p1, "o"    # Lcom/motorola/simmanager/AdnContactListActivity$AdnContactData;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/motorola/simmanager/AdnContactListActivity$AdnContactData;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/motorola/simmanager/AdnContactListActivity$AdnContactData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 273
    check-cast p1, Lcom/motorola/simmanager/AdnContactListActivity$AdnContactData;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/simmanager/AdnContactListActivity$AdnContactData;->compareTo(Lcom/motorola/simmanager/AdnContactListActivity$AdnContactData;)I

    move-result v0

    return v0
.end method
